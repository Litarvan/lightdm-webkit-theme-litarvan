<template>
    <div class="home hero is-fullheight">
        <div class="hero-head">
            <Clock />
        </div>

        <div id="trigger" class="hero-foot">{{ trigger }}</div>
    </div>
</template>

<script>
    import Clock from '@/components/Clock.vue';
    import { trans } from '../translations';

    export default {
        name: 'home',
        components: {
            Clock
        },
        data() {
            return {
                trigger: trans('trigger')
            }
        }
    };
</script>

<style>
    .home {
        background-image: url('../assets/images/background.jpg');
    }

    .clock {
        margin-top: 5.5vh;
    }

    #trigger {
        font-family: 'Lato', 'Noto Sans', serif;
        font-weight: 300;
        font-style: italic;
        font-size: 32px;

        margin-bottom: 12vh;
        letter-spacing: 0.25px;
    }
</style>
