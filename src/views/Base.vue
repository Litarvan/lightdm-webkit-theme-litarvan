<script setup>
import { onMounted } from 'vue'
import { useRouter } from 'vue-router'
import { background } from '@/themer.js';
import { settings } from '@/settings.js';

const router = useRouter()

const fixed = settings.blur !== 'absolute'
const absolute = settings.blur === 'absolute'
const transition = settings.blur !== 'static'
const blurrable = settings.blur !== 'disabled'

function isBlurred() {
  let name = router.currentRoute.name;
  return name === 'login' || name === 'select';
}

onMounted(() => {
  if (window.greeter_comm) {
    window.addEventListener("GreeterBroadcastEvent", (event) => {
      const data = event.data;
      if (data.type == "change-background") {
        background.value = data.path;
      }
    })
  }
})
</script>

<template>
  <div class="base">
    <div class="bg" :class="{ blurred: isBlurred(), fixed, absolute, blurrable, transition }"
      :style="{ 'background-image': 'url(' + background + ')' }">
    </div>

    <router-view v-slot="{ Component }">
      <transition name="fade">
        <component :is="Component" />
      </transition>
    </router-view>
  </div>
</template>

<!-- <script> -->
<!--     import { background } from '@/themer.js'; -->
<!--     import { settings } from '@/settings.js'; -->
<!---->
<!--     export default { -->
<!--         name: 'l-base', -->
<!---->
<!--         data() { -->
<!--             const { blur } = settings; -->
<!---->
<!--             return { -->
<!--                 background, -->
<!--                 fixed: blur !== 'absolute', -->
<!--                 absolute: blur === 'absolute', -->
<!--                 transition: blur !== 'static', -->
<!--                 blurrable: blur !== 'disabled' -->
<!--             }; -->
<!--         }, -->
<!--         methods: { -->
<!--             isBlurred() { -->
<!--                 let name = this.$router.currentRoute.name; -->
<!--                 return name === 'login' || name === 'select'; -->
<!--             } -->
<!--         }, -->
<!--         mounted() { -->
<!--             if (window.greeter_comm) { -->
<!--                 window.addEventListener("GreeterBroadcastEvent", (event) => { -->
<!--                     const data = event.data; -->
<!--                     if (data.type == "change-background") { -->
<!--                         this.background = data.path; -->
<!--                     } -->
<!--                 }) -->
<!--             } -->
<!--         } -->
<!--     }; -->
<!-- </script> -->

<style lang="scss">
@import '../theme';

.bg {
  background-size: cover;
  left: 0;
  right: 0;

  display: block;
  width: 100%;
  height: 100vh;

  z-index: -1;

  color: $secondary-color;

  &.absolute {
    position: absolute;
  }

  &.fixed {
    position: fixed;
  }

  &.blurrable {
    filter: blur(0px);

    &.transition {
      transition: filter 500ms ease-in-out;
    }

    &.blurred {
      filter: blur(10px);
    }
  }
}
</style>
