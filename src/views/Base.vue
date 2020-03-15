<template>
    <div class="base">
        <div class="bg" :class="{ blured: isBlured() }" :style="{ 'background-image': 'url(' + background + ')' }">
        </div>

        <transition name="fade">
            <router-view/>
        </transition>
    </div>
</template>

<script>
    import {background} from '../themer';

    export default {
        name: 'l-base',

        data() {
            return {
                background
            };
        },
        methods: {
            isBlured() {
                let name = this.$router.currentRoute.name;
                return name === 'login' || name === 'select';
            }
        }
    };
</script>

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
    }

    .blured {
        filter: blur(10px);
    }

    @media screen and (max-width: 2000px) {
        .bg {
            position: fixed;
        }
    }

    @media screen and (min-width: 2001px) {
        .bg {
            position: absolute;
        }
    }
</style>
