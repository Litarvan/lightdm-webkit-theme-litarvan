<script setup>
import { avatar, settings } from '@/settings';

// key is environment name, value is icon name. Sorted by key
const environments = {
  'awesome': 'awesome',
  'bspwm': 'bspwm',
  'budgie': 'budgie',
  'cinnamon': 'cinnamon',
  'dde': 'deepin',
  'deepin': 'deepin',
  'dwm': 'dwm',
  'elementary': 'elementary',
  'enlightenment': 'enlightenment',
  'exwm': 'exwm',
  'gnome': 'gnome',
  'i3': 'i3',
  'kde': 'kde',
  'kodi': 'kodi',
  'kubuntu': 'kde',
  'liri': 'liri',
  'lxde': 'lxde',
  'lxqt': 'lxde',
  'mate': 'mate',
  'mint': 'cinnamon',
  'openbox': 'openbox',
  'pantheon': 'elementary',
  'plasma': 'kde',
  'qtitle': 'qtitle',
  'solus': 'budgie',
  'sway': 'sway',
  'ubuntu': 'ubuntu',
  'unity': 'ubuntu',
  'xfce': 'xfce',
  'xmonad': 'xmonad',
  'xubuntu': 'xfce',
}
const props = defineProps(['mode', 'item', 'selected', 'noicon'])
const emit = defineEmits(['select'])

function select() {
  emit('select')
}

function icon() {
  if (props.mode === 'user') {
    return avatar(props.item.image);
  }

  if (props.mode === 'desktop') {
    if (!props.item?.key) {
      return '';
    }

    const key = props.item.key.toLowerCase();
    let ic = environments[Object.keys(environments).find((env) => key.includes(env))];

    if (!ic && /e[1-9]{2}/g.test(key)) {
      ic = 'enlightenment';
    }

    if (!ic) {
      return '';
    }
    let iconurl = new URL(`../assets/images/desktops/${ic}.png`, import.meta.url).href;
    return iconurl
  }
}
</script>

<template>
  <div class="item" :class="{ 'user': mode === 'user', 'desktop': mode === 'desktop', 'selected': selected }"
    v-theming="['border-bottom-color']" v-italic @click="select()">
    <div class="icon-container" v-if="!noicon">
      <img class="icon" :src="icon()" />
    </div>

    {{ mode === 'user' ? item.display_name : item.name }} <span v-if="mode === 'user' && !settings.hideUsername">/ <span
        class="username">{{ item.username }}</span></span>
  </div>
</template>

<style lang="scss" scoped>
.item {
  font-family: 'Lato', 'Noto Sans', sans-serif;

  border-radius: 5px;
  transition: background-color 125ms ease-in-out;

  min-width: 150px;
}

.item.selected {
  border-bottom: solid 2px;
  background: rgba(255, 255, 255, 0.055);
}

.item:hover {
  cursor: pointer;
  background: rgba(255, 255, 255, 0.115);
}

.item.desktop {
  font-weight: 300;
  font-size: 44px;

  padding: 7px 19px;
  margin-bottom: 20px;
}

.item.user {
  font-weight: 300;
  font-size: 42px;

  padding: 3px 18px 8px;

  margin-bottom: 25px;
}

.username {
  font-weight: bold;
}

.icon-container {
  display: inline-block;

  width: 45px;
  height: 45px;

  margin-right: 6px;
}

.item.user .icon-container {
  margin-right: 8px;
}

.icon {
  height: 45px;
  margin-bottom: -6px;
}

.item.user .icon {
  margin-bottom: -8px;
}

@media (max-height: 850px) {
  .item.user {
    font-size: 40px;
  }

  .item.desktop {
    font-size: 41px;
  }

  .icon {
    margin-bottom: -5px;
  }
}
</style>
