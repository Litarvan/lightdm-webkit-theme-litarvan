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
document.documentElement.style.setProperty('--primary-color', color)

export function updateColor(hex) {
    color = hex;
    localStorage.setItem('color', color);
    document.documentElement.style.setProperty('--primary-color', color)
}

export function updateBG(bg) {
    background = bg;
    localStorage.setItem('background', bg);
    if (window.greeter_comm) {
        greeter_comm.broadcast({
            type: "change-background",
            path: bg,
        })
    }
}

export async function backgrounds() {
    const folder = greeter_config.branding.background_images_dir ||
                    greeter_config.branding.background_images;
    if (!folder) {
        return [DEFAULT_BG];
    }

    const recDirList = async (dir) => {
        let result = [];
        let dirlist = [];
        await new Promise((resolve) => {
            let dirl = theme_utils.dirlist(dir, true, (files) => {
                dirlist = files;
                resolve();
            })
            if (Array.isArray(dirl)) {
                dirlist = dirl;
                resolve();
            }
        })

        for (const file of dirlist) {
            if (!file.includes('.')) { // I didn't find any good ways to do it
                result = [...result, ...(await recDirList(file))];
            } else if (!file.endsWith('.xml') && !file.endsWith('.stw')) { // Gnome and Arch backgrounds have strange files
                result.push(file);
            }
        }
        return result;
    };

    let result = await recDirList(folder);

    return [DEFAULT_BG, ...result];
}

function getBackground() {
    if(settings.randomizeBG) {
        const bgs = backgrounds();
        return bgs[Math.floor(Math.random() * bgs.length)];
    }

    return localStorage.getItem('background') || DEFAULT_BG;
}
