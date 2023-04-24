import { ref, reactive } from 'vue'
import { settings } from '@/settings';

export const DEFAULT_COLOR = '#249cea';
// const DEFAULT_BG = require('./assets/images/background.png');
const DEFAULT_BG = new URL('@/assets/images/background.png', import.meta.url).href;

export const color = ref(localStorage.getItem('color') || DEFAULT_COLOR);
export const backgrounds = reactive(getBackgrounds());
export const background = ref(getBackground());

export function hook(element, rules) {
  const style = element.style;

  for (const rule of rules) {
    style[rule] = color;
  }
}
document.documentElement.style.setProperty('--primary-color', color)

export function updateColor() {
  // color.value = hex;
  localStorage.setItem('color', color.value);
  document.documentElement.style.setProperty('--primary-color', color.value)
}

// export function updateBG(bg) {
//   background = bg;
//   localStorage.setItem('background', bg);
//   if (window.greeter_comm) {
//     greeter_comm.broadcast({
//       type: "change-background",
//       path: bg,
//     })
//   }
// }
export function updateBG() {
  localStorage.setItem('background', background.value);
  if (window.greeter_comm) {
    greeter_comm.broadcast({
      type: "change-background",
      path: background.value,
    })
  }
}

export function getBackgrounds() {
  const folder = greeter_config.branding.background_images_dir ||
    greeter_config.branding.background_images;
  if (!folder) {
    return [DEFAULT_BG];
  }

  const recDirList = (dir) => {
    let result = [];
    let dirlist = [];
    let dirl = theme_utils.dirlist(dir, false, (files) => {
      dirlist = files;
    })
    if (Array.isArray(dirl)) {
      dirlist = dirl;
    }

    for (const file of dirlist) {
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
    const bgs = getBackgrounds();
    return bgs[Math.floor(Math.random() * bgs.length)];
  }

  return localStorage.getItem('background') || DEFAULT_BG;
}
