<template>
    <div class="base">
        <div class="bg" :class="{ blurred: isBlurred(), fixed, absolute, blurrable, transition }" :style="{ 'background-image': 'url(' + background + ')' }">
        </div>

        <transition name="fade">
            <router-view/>
        </transition>
    </div>
</template>

<script>
    import { background } from '@/themer';
    import { settings } from '@/settings';

    export default {
        name: 'l-base',

        data() {
            const { blur } = settings;

            return {
                background,
                fixed: blur !== 'absolute',
                absolute: blur === 'absolute',
                transition: blur !== 'static',
                blurrable: blur !== 'disabled'
            };
        },
        methods: {
            isBlurred() {
                let name = this.$router.currentRoute.name;
                return name === 'login' || name === 'select';
            }
        },
        mounted() {
            if (window.greeter_comm) {
                window.addEventListener("GreeterBroadcastEvent", (event) => {
                    const data = event.data;
                    if (data.type == "change-background") {
                        this.background = data.path;
                    }
                })
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
