<script setup>
import { onMounted, onBeforeUnmount } from 'vue'
import { useRouter } from 'vue-router'

import LClock from '@/components/Clock.vue';
import LAdditions from '@/components/Additions.vue';

import { trans } from '@/translations';
import { settings } from '@/settings';

const router = useRouter()

const trigger = trans('trigger')
const clockOnly = settings.disableSplashText

function submit(event) {
    if (event.which === 13 || event.which === 32) {
        router.push('/base/login');
    }
}

onMounted(() => {
    window.addEventListener('keyup', submit);
})

onBeforeUnmount(() => {
    window.removeEventListener('keyup', submit);
})
</script>

<template>
    <div id="splash" :class="{ 'clock-only': clockOnly }">
        <div id="top-container">
            <LClock />
            <LAdditions v-if="!clockOnly" />
        </div>
        <div v-if="!clockOnly" id="trigger" v-italic>{{ trigger }}</div>
    </div>
</template>

<style lang="scss" scoped>
#splash {
    display: flex;
    justify-content: space-between;
    flex-direction: column;
}

#splash:not(.clock-only) .clock {
    margin-top: 6vh;
}

#splash.clock-only {
    align-items: center;
    justify-content: center;
    flex-direction: initial;

    .clock {
        padding-bottom: 25px;
        /* Text size compensation */
    }
}

#top-container {
    display: flex;
    flex-direction: column;
}

#trigger {
    font-family: 'Lato', 'Noto Sans', serif;
    font-weight: 300;
    font-size: 32px;
    cursor: default;

    margin-bottom: 11.5vh;
    letter-spacing: 0.25px;
}
</style>
