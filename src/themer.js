import { settings } from './settings';

export const DEFAULT_COLOR = '#249cea';
const DEFAULT_BG = require('./assets/images/background.png');

export let color = localStorage.getItem('color') || DEFAULT_COLOR;
export let background = getBackground();

export function hook(element, rules) {
    const style = element.style;

    for (const rule of rules) {
        style[rule] = color;
    }
}

export function updateColor(hex) {
    color = hex;
    localStorage.setItem('color', color);
}

export function updateBG(bg) {
    background = bg;
    localStorage.setItem('background', bg);
}

export function backgrounds() {
    const folder = greeter_config.branding.background_images;
    if (!folder) {
        return;
    }

    let result = [];

    const recDirlist = dir => {
        let result = [];
        for (const file of theme_utils.dirlist(dir)) {
            if (!file.includes('.')) { // I didn't find any good ways to do it
                result = [...result, ...recDirlist(file)];
            } else {
                result.push(file);
            }
        }

        return result;
    };

    for (const bg of recDirlist(folder)) {
        result.push('file://' + bg);
    }

    return [DEFAULT_BG, ...result];
}

function getBackground() {
    if(settings.randomizeBG) {
        const bgs = backgrounds();
        return bgs[Math.floor(Math.random() * bgs.length)];
    }

    return localStorage.getItem('background') || DEFAULT_BG;
}
