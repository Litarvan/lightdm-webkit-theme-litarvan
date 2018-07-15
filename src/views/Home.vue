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
    import { trans } from '@/translations';

    export default {
        name: 'home',
        components: {
            Clock
        },
        mounted() {
            window.addEventListener('keyup', this.submit);
        },
        data() {
            return {
                trigger: trans('trigger')
            }
        },
        methods: {
            submit(event) {
                if (event.which === 13 || event.which === 32) {
                    this.$router.push('/base/login/classic');
                }
            }
        }
    };
</script>

<style>
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
</style>
