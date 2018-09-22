<template>
    <div id="splash" :class="{ 'clock-only': clockOnly }">
        <Clock />
        <div v-if="!clockOnly" id="trigger">{{ trigger }}</div>
    </div>
</template>

<script>
    import Clock from '@/components/Clock.vue';
    import { trans } from '@/translations';
    import { settings } from '@/settings';

    export default {
        name: 'splash',
        components: { Clock },
        mounted() {
            window.addEventListener('keyup', this.submit);
        },
        data() {
            return {
                trigger: trans('trigger'),
                clockOnly: settings.disableSplashText
            }
        },
        methods: {
            submit(event) {
                if (event.which === 13 || event.which === 32) {
                    this.$router.push('/base/login');
                }
            }
        }
    };
</script>

<style lang="scss" scoped>
    #splash {
        display: flex;
        justify-content: space-between;
        flex-direction: column;
    }

    .clock {
        margin-top: 6vh;
    }

    .clock-only .clock {
        margin-top: calc(50vh - 160px);
    }

    #trigger {
        font-family: 'Lato', 'Noto Sans', serif;
        font-weight: 300;
        font-style: italic;
        font-size: 32px;

        margin-bottom: 11.5vh;
        letter-spacing: 0.25px;
    }
</style>
