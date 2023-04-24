import { ref, reactive } from 'vue'
import { settings } from '@/settings';

export const DEFAULT_COLOR = '#249cea';

// vite Static Asset Handling.
// when building, vite will automatically copy the static assets to dist dir, 
// and adjust the resolved public URL.
// if using raw string, vite won't copy the static assets, leads to 404
const DEFAULT_BG = new URL('@/assets/images/background.png', import.meta.url).href;
// const DEFAULT_BG = require('./assets/images/background.png');

// wrap color, background, backgrounds by ref or reactive to make them reactive
export const color = ref(localStorage.getItem('color') || DEFAULT_COLOR);
export const backgrounds = reactive(getBackgrounds());
export const background = ref(getBackground());

export function hook(element, rules) {
  const style = element.style;

  for (const rule of rules) {
    style[rule] = color.value;
  }
}
document.documentElement.style.setProperty('--primary-color', color)

export function updateColor() {
  localStorage.setItem('color', color.value);
  document.documentElement.style.setProperty('--primary-color', color.value)
}

export function updateBG() {
  localStorage.setItem('background', background.value);
  if (window.greeter_comm) {
    greeter_comm.broadcast({
      type: "change-background",
      path: background.value,
    })
  }
}

// async is conflict with randomize background feature,
// because randomize background feature requires all backgrounds are already known,
// so as to pick background randomly to show the background.
function getBackgrounds() {
  const folder = greeter_config.branding.background_images_dir ||
    greeter_config.branding.background_images;
  if (!folder) {
    return [DEFAULT_BG];
  }

  const recDirList = (dir) => {
    let result = [];
    let dirlist = [];

    // return list of abs paths for the files and directories found in path.
    let dirl = theme_utils.dirlist(dir, false, (files) => {
      dirlist = files;
    })

    if (Array.isArray(dirl)) {
      dirlist = dirl;
    }

    for (const file of dirlist) {
      // dirlist is a list of path string,
      // so no other info to use to distinguish file and dirs
      if (!file.includes('.')) { // I didn't find any good ways to do it
        result = [...result, ...recDirList(file)];
      } else if (!file.endsWith('.xml') && !file.endsWith('.stw')) { // Gnome and Arch backgrounds have strange files
        result.push(file);
      }
    }
    return result;
  };

  let result = recDirList(folder);

  return [DEFAULT_BG, ...result];
}

function getBackground() {
  if (settings.randomizeBG) {
    return backgrounds[Math.floor(Math.random() * backgrounds.length)];
  }

  return localStorage.getItem('background') || DEFAULT_BG;
}
