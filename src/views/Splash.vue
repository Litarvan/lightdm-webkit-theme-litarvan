<script setup>
    import { onMounted, onBeforeUnmount } from 'vue'
    import { useRouter } from 'vue-router'

    import LClock from '@/components/Clock.vue';
    import LAdditions from '@/components/Additions.vue';

    import { trans } from '@/translations';
    import { settings } from '@/settings';

    const router = useRouter()
        
    let isSecondary = document.head.dataset.wintype === "secondary";

    const trigger = trans('trigger')
    const clockOnly = settings.disableSplashText || isSecondary
    const showClock = !isSecondary
    const showAdditions = !isSecondary

    function submit(event) {
        if (event.which === 13 || event.which === 32) {
            router.push('/base/login');
        }
    }

    onMounted(() =>  {
        if (isSecondary) {
            set_complete_cb(() => {
                router.push(settings.disableFade ? '/base' : '/intro/login');
            });
        } else {
            window.addEventListener('keyup', submit);
        }
    })

    onBeforeUnmount(() => {
        if (!isSecondary) {
            window.removeEventListener('keyup', submit);
        }
    })
</script>

<template>
    <div id="splash" :class="{ 'clock-only': clockOnly }">
        <div id="top-container">
            <LClock v-if="showClock" />
            <LAdditions v-if="showAdditions && !clockOnly" />
        </div>
        <div v-if="!clockOnly" id="trigger" v-italic>{{ trigger }}</div>
    </div>
</template>

<!-- <script> -->
<!--     import LClock from '@/components/Clock.vue'; -->
<!--     import LAdditions from '@/components/Additions.vue'; -->
<!---->
<!--     import { trans } from '@/translations'; -->
<!--     import { settings } from '@/settings'; -->
<!--          -->
<!--     let isSecondary = document.head.dataset.wintype === "secondary"; -->
<!---->
<!--     export default { -->
<!--         name: 'l-splash', -->
<!--         components: { LClock, LAdditions }, -->
<!---->
<!--         mounted() { -->
<!--             if (isSecondary) { -->
<!--                 set_complete_cb(() => { -->
<!--                     this.$router.push(settings.disableFade ? '/base' : '/intro/login'); -->
<!--                 }); -->
<!--             } else { -->
<!--                 window.addEventListener('keyup', this.submit); -->
<!--             } -->
<!--         }, -->
<!--         beforeDestroy() { -->
<!--             if (!isSecondary) { -->
<!--                 window.removeEventListener('keyup', this.submit); -->
<!--             } -->
<!--         }, -->
<!--         data() { -->
<!--             return { -->
<!--                 trigger: trans('trigger'), -->
<!--                 clockOnly: settings.disableSplashText || isSecondary, -->
<!--                 showClock: !isSecondary, -->
<!--                 showAdditions: !isSecondary, -->
<!--             } -->
<!--         }, -->
<!--         methods: { -->
<!--             submit(event) { -->
<!--                 if (event.which === 13 || event.which === 32) { -->
<!--                     this.$router.push('/base/login'); -->
<!--                 } -->
<!--             } -->
<!--         } -->
<!--     }; -->
<!-- </script> -->

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
            padding-bottom: 25px; /* Text size compensation */
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
