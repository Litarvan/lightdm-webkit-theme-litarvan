import { trans } from './translations';

// TODO: Color SVG and certain classes?

export const DEFAULT = {
    'primary': '#249cea',
    'secondary': '#ffffff',
    'error': '#de3c2d',
    'passwordField': '#ffffff32'
};

let colors = JSON.parse(localStorage.getItem('colors')) || DEFAULT;

export function hook(element, hooks) {
    const style = element.style;

    for (const rule of Object.keys(hooks)) {
        style[rule] = colors[hooks[rule]];
    }

    console.log(style);
}

export function update(id, hex) {
    colors[id] = hex;
    localStorage.setItem('colors', JSON.stringify(colors));
}

export function getColors() {
    const result = [];
    for (const id of Object.keys(colors)) {
        result.push({ id, label: trans('color' + id[0].toUpperCase() + id.substring(1)), hex: colors[id] });
    }

    return result;
}
