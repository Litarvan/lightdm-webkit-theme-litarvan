<script setup>
import { onMounted, onUnmounted } from 'vue';
import { useRouter, useRoute } from 'vue-router';

import { settings, save } from '@/settings';

const router = useRouter();
const route = useRoute();

function keyup(event) {
  if (event.which === 27) {
    console.log(event)
    if (route.name !== 'splash' && route.name !== 'intro') {
      // TODO: why saving
      console.log('App.vue keyup event')
      save();
      if (route.name === 'setup') {
        router.push('/base/splash');
      } else {
        router.back();
      }
    }
  }
}

onMounted(() => {
  router.push('/intro/initial')
  window.addEventListener('keyup', keyup);
})

onUnmounted(() => {
  window.removeEventListener('keyup', keyup)
})

</script>

<template>
  <div id="app" :class="{ 'disableZoom': settings.disableZoom }">
    <router-view v-slot="{ Component }">
      <transition name="fade">
        <component :is="Component" />
      </transition>
    </router-view>
  </div>
</template>

<style lang="scss">
@import '_theme';

html.lightdm {
  background: $outer-background !important;
  color: $secondary-color;
}

/* HiDPI */
@media screen and (min-width: 3000px) and (min-height: 1200px) {
  #app:not(.disableZoom) {
    zoom: 2.0;
  }
}

@font-face {
  font-family: 'Lato';
  font-style: italic;
  font-weight: bold;
  src: url('assets/fonts/Lato-BoldItalic.ttf');
}

@font-face {
  font-family: 'Lato';
  src: url('assets/fonts/Lato-Regular.ttf');
}

@font-face {
  font-family: "Lato";
  font-style: italic;
  src: url('assets/fonts/Lato-Italic.ttf');
}

@font-face {
  font-family: 'Lato';
  font-weight: 300;
  src: url('assets/fonts/Lato-Light.ttf');
}

@font-face {
  font-family: "Lato";
  font-style: italic;
  font-weight: 300;
  src: url('assets/fonts/Lato-LightItalic.ttf');
}

html,
body,
#app,
#app>*,
.base>* {
  margin: 0;
  padding: 0;

  height: 100vh;

  overflow-y: hidden;
}

h1,
h2,
h3,
h4,
h5,
h6 {
  cursor: default;
}

img {
  -webkit-user-drag: none;
}

#app {
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  -webkit-user-select: none;

  text-align: center;
}

.italic:not(.custom-italic) {
  font-style: italic;
}

.fade-enter-active,
.fade-leave-active {
  transition-property: opacity;
  transition-duration: .4s;
}

.fade-enter-active {
  transition-delay: .4s;
}

.fade-enter,
.fade-leave-active {
  opacity: 0
}
</style>
