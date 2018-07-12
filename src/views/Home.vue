<template>
    <div class="home hero is-fullheight">
        <div class="hero-head">
            <Clock />
        </div>

        <div id="trigger" class="hero-foot">{{ trigger }}</div>

        <PowerButton id="shutdown" type="shutdown"></PowerButton>
        <PowerButton id="reboot" type="reboot"></PowerButton>
    </div>
</template>

<script>
    import Clock from '@/components/Clock.vue';
    import PowerButton from '@/components/PowerButton.vue';
    import { trans } from '@/translations';

    export default {
        name: 'home',
        components: {
            Clock,
            PowerButton
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
        margin-top: 6vh;
    }

    #trigger {
        font-family: 'Lato', 'Noto Sans', serif;
        font-weight: 300;
        font-style: italic;
        font-size: 32px;

        margin-bottom: 11.5vh;
        letter-spacing: 0.25px;
    }

    #shutdown {
        position: absolute;
        bottom: 20px;
        left: 20px;
    }

    #reboot {
        position: absolute;
        bottom: 20px;
        right: 20px;
    }
</style>
