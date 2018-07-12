<template>
    <div class="splash">
        <transition name="logo-fade">
            <div id="content" v-if="show">
                <img v-if="state === 'initial'" id="logo" src="../assets/images/arch.svg" />
                <p v-if="state !== 'initial'" id="power-text">
                    {{ text }}
                </p>
            </div>
        </transition>
    </div>
</template>

<script>
    import { trans } from '@/translations';

    export default {
        name: 'splash',

        mounted() {
            this.show = true;

            if (this.state === 'initial') {
                setTimeout(() => {
                    this.show = false;
                    this.$router.push('/home');
                }, 2000);
            }
        },

        data() {
            return {
                show: false,
                state: this.$route.params.state,
                text: trans(this.$route.params.state)
            };
        }
    };
</script>

<style scoped>
    .splash {
        background-color: black;

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
        font-style: italic;
        font-weight: normal;
        color: white;
        font-size: 58px;
    }

    .logo-fade-enter-active, .logo-fade-leave-active {
        transition: opacity 1s;
    }

    .logo-fade-enter, .logo-fade-leave-to {
        opacity: 0;
    }
</style>