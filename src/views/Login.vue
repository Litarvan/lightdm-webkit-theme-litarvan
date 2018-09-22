<template>
    <div class="login" :class="{ 'compact': isCompact }">
        <Clock :small="true" v-if="isCompact" />

        <div id="login-content">
            <div id="avatar">
                <img id="avatar-image" src="../assets/images/default_user.png" />
            </div>

            <div id="login-form">
                <div id="user">
                    John Doe / <span id="username">johnd</span>
                </div>

                <input v-if="!immutable" id="password" type="password" :placeholder="passwordLabel" />
                <div v-else id="password" class="immutable"></div>

                <div id="desktop">
                    <img id="desktop-icon" src="../assets/images/desktops/gnome.png" />
                    Gnome 3
                </div>
            </div>
        </div>

        <div v-if="!immutable">
            <PowerButton id="settings" type="settings"></PowerButton>

            <transition name="power-fade">
                <div id="power-list" v-if="powerList">
                    <PowerButton id="suspend" type="suspend"></PowerButton>
                    <PowerButton id="reboot" type="restart"></PowerButton>
                </div>
            </transition>

            <div @click="powerList = !powerList">
                <PowerButton id="shutdown" type="shutdown" :disabled="!powerList"></PowerButton>
            </div>
        </div>
    </div>
</template>

<script>
    import PowerButton from '@/components/PowerButton.vue';
    import Clock from '@/components/Clock.vue';
    import LightDM from '@/lightdm';
    import { trans } from '@/translations';

    export default {
        name: 'login-classic',
        components: {PowerButton, Clock},
        props: ['immutable', 'compact'],

        data() {
            return {
                canSuspend: LightDM.can_suspend,
                passwordLabel: trans('password'),
                isCompact: this.compact,
                powerList: false
            }
        },
        mounted() {
            window.addEventListener('keyup', this.submit);
            setTimeout(() => document.querySelector('#password').focus(), 500);
        },
        methods: {
            submit(event) {
                if (event.which === 27) {
                    this.$router.push('/base/home');
                }
            }
        }
    }
</script>

<style lang="scss" scoped>
    .login.compact {
        .clock {
            margin-top: 6vh;
        }

        #avatar, #login-form {
            display: inline-block;
        }

        #avatar {
            margin-top: 0;
        }

        #login-form {
            text-align: left;

            margin-left: 42px;
            vertical-align: bottom;
        }

        #login-content {
            margin-top: 10vh;
        }

        @media (min-height: 900px) {
            #login-content {
                margin-top: 13.75vh;
            }
        }

        #user {
            margin-top: 0;
        }

        #password {
            margin-top: 2.5vh;
        }

        #desktop {
            margin-top: 3vh;
        }
    }

    #login-content {
        margin-top: 11vh;
    }

    @media (min-height: 850px) {
        #login-content {
            margin-top: 13.5vh;
        }
    }

    #avatar-image {
        width: 225px;
    }

    #user, #password, #desktop {
        font-family: 'Lato', 'Noto Sans', sans-serif;
        font-style: italic;
        font-weight: 300;
    }

    #user {
        font-size: 42px;
        margin-top: 3.5vh;
    }

    #username {
        font-weight: bold;
    }

    #password::placeholder {
        color: rgba(255, 255, 255, 0.55);
        opacity: 1;
    }

    #password {
        margin-top: 4.5vh;

        background: rgba(255, 255, 255, 0.2);
        caret-color: rgba(255, 255, 255, 0.6);
        color: white;

        padding-left: 15px;
        padding-right: 15px;
        font-size: 24px;

        width: 415px;
        height: 54px;

        border: none;
        border-bottom: solid 3px #249cea;
        border-top-left-radius: 4px;
        border-top-right-radius: 4px;
    }

    #password.immutable {
        display: inline-block;
        background: rgba(255, 255, 255, 0.35);
        border-bottom-width: 6px;
    }

    #desktop {
        margin-top: 8vh;
        font-weight: normal;
        font-size: 44px;
    }

    #desktop-icon {
        height: 45px;
        margin-right: 4px;
        margin-bottom: -6px;
    }

    #settings {
        position: absolute;
        bottom: 20px;
        left: 20px;
    }

    #suspend {
        position: absolute;
        bottom: 170px;
        right: 20px;
    }

    #reboot {
        position: absolute;
        bottom: 95px;
        right: 20px;
    }

    #shutdown {
        position: absolute;
        bottom: 20px;
        right: 20px;
    }

    @media (max-height: 850px) {
        #avatar-image {
            width: 205px;
        }

        #password {
            height: 49px;
            font-size: 22px;
        }

        #user {
            font-size: 40px;
        }

        #desktop {
            font-size: 41px;
        }

        #desktop-icon {
            margin-bottom: -5px;
        }
    }

    .power-fade-enter-active {
        transition: all .3s ease;
    }

    .power-fade-enter {
        opacity: 0;
    }
</style>