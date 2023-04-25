<script setup>
import { ref, onMounted } from 'vue';
import { useRouter, useRoute } from 'vue-router';

import { trans } from '@/translations';
import { settings } from '@/settings';

const router = useRouter();
const route = useRoute();

const show = ref(false);
const state = route.params.state;
const text = trans(state)

onMounted(() => {
    if (state === 'initial') {
        // TODO: secondary.html, necessary?
        if (document.head.dataset.wintype === 'secondary') {
            if (settings.disableIntro) {
                router.push('/base/splash');
            } else {
                setTimeout(() => {
                    router.push('/base/splash');
                }, 2000);
            }
            return;
        }

        if (settings.disableIntro) {
            router.push(settings.disableSplash ? '/base/login' : '/base/splash');
            return;
        }
        show.value = true;
        setTimeout(() => {
            show.value = false;
            router.push(settings.first ? '/setup' : (settings.disableSplash ? '/base/login' : '/base/splash'));
        }, 2000);
    }
})

// vite static assets handling
function getImageUrl(name) {
    return new URL(`../assets/images/${name}`, import.meta.url).href
}
</script>

<template>
    <div id="intro">
        <transition name="logo-fade">
            <div id="content" v-if="show">
                <img v-if="state === 'initial'" id="logo" :src="getImageUrl('os.png')" />
                <p v-else id="power-text" v-italic>
                    <img id="power-icon" :src="getImageUrl(`${state}.svg`)" />
                    {{ text }}
                </p>
            </div>
        </transition>
    </div>
</template>

<style lang="scss" scoped>
@import '../theme';

#intro {
    background-color: $outer-background;

    display: flex;
    align-items: center;
    text-align: center;
}

#content {
    margin-left: auto;
    margin-right: auto;
}

#logo {
    height: 250px;
}

#power-text {
    font-family: 'Lato', 'Noto Sans', serif;
    font-weight: normal;
    color: $outer-foreground;
    font-size: 58px;
}

.logo-fade-enter-active,
.logo-fade-leave-active {
    transition: opacity 1s;
}

.logo-fade-enter,
.logo-fade-leave-to {
    opacity: 0;
}

#power-icon {
    width: 50px;

    margin-bottom: -5px;
    margin-right: 4px;
}
</style>
