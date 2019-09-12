export const DEFAULT = '#249cea';
export let color = localStorage.getItem('color') || DEFAULT;

export function hook(element, rules) {
    const style = element.style;

    for (const rule of rules) {
        style[rule] = color;
    }
}

export function update(hex) {
    color = hex;
    localStorage.setItem('color', color);
}
