<template>
    <div class="login" :class="{ 'compact': isCompact }">
        <Clock :small="true" v-if="isCompact" />

        <div id="login-content" :class="{ 'no-avatar': settings.disableAvatar }">
            <div id="avatar" v-if="!settings.disableAvatar">
                <img id="avatar-image" :class="{ 'round': settings.roundAvatar }" :src="avatar(settings.user.image)" />
            </div>

            <div id="login-form">
                <SelectItem mode="user" :item="settings.user" @select="!immutable && $router.push('/base/select/user')" :noicon="true" />

                <form v-if="!immutable" @submit.prevent="submit">
                    <input id="password" type="password" v-model="password" :placeholder="passwordLabel" :readonly="logging" :class="{'error': error}" v-theming="{ 'border-bottom-color': 'primary' }" />
                </form>
                <div v-else id="password" class="immutable"></div>
                <div id="info">
                    {{ info }}
                </div>

                <SelectItem mode="desktop" :item="settings.desktop" @select="!immutable && $router.push('/base/select/desktop')" />
            </div>
        </div>

        <div v-if="!immutable">
            <PowerButton id="settings" type="settings"></PowerButton>

            <transition name="power-fade">
                <div id="power-list" v-if="powerList">
                    <PowerButton v-if="canSuspend" id="suspend" type="suspend"></PowerButton>
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
    import { avatar, settings } from '@/settings';
    import { trans } from '@/translations';
    import SelectItem from '../components/SelectItem';

    export default {
        name: 'login',
        components: { SelectItem, PowerButton, Clock },
        props: ['immutable', 'compact'],

        data() {
            return {
                canSuspend: lightdm.can_suspend,
                passwordLabel: trans('password'),
                isCompact: this.immutable ? this.compact : settings.mode === 'compact',
                settings,
                powerList: false,
                logging: false,
                error: false,
                info: '',

                password: ''
            }
        },
        mounted() {
            window.addEventListener('keyup', this.keyup);
            setTimeout(() => {
                let p = document.querySelector('#password');
                p && p.focus();
            }, 650);
        },
        methods: {
            avatar,
            keyup(event) {
                if (event.which === 27) {
                    this.$router.push(settings.disableSplash ? '/base/login' : '/base/splash');
                }

                if (event.getModifierState("CapsLock")) {
                    this.info = trans('capsLock');
                } else {
                    this.info = '';
                }
            },
            submit() {
                this.logging = true;

                // Workaround for a form submit bug reloading the route
                setTimeout(() => {
                    lightdm_login(this.settings.user.username, this.password, () => {
                        setTimeout(() => lightdm_start(this.settings.desktop.key), 400);
                        this.$router.push(settings.disableFade ? '/base' : '/intro/login');
                    }, () => {
                        this.error = true;
                        this.password = '';
                        this.logging = false;
                    })
                }, 150);
            }
        }
    }
</script>

<style lang="scss" scoped>
    @import '../theme';

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
        }

        .item.user {
            margin-bottom: 0;
        }

        #login-content {
            margin-top: 10.5vh;
        }

        @media (min-height: 900px) {
            #login-content {
                margin-top: 14.25vh;
            }
        }

        #login-content.no-avatar {
            .item.user {
                margin-bottom: 2.0vh;
            }

            .item.desktop {
                margin-top: 4vh;
            }

            #login-form {
                margin-left: 0;
                text-align: center;
            }
        }

        .item.user {
            margin-top: 0;
        }

        #password {
            margin-top: 2.5vh;
        }

        #info {
            font-size: 17px;
            height: 26px;
            margin-top: 5px;
        }

        .item.desktop {
            margin-top: 0;
        }
    }

    .item.user {
        margin-bottom: 13px;
    }

    #login-content {
        margin-top: 11.5vh;
    }

    @media (min-height: 850px) {
        #login-content {
            margin-top: 14vh;
        }
    }

    #login-content.no-avatar {
        margin-top: calc(50vh - 165px);

        .item.user {
            margin-top: 0;
        }

        .item.desktop {
            margin-top: 5.5vh;
        }
    }

    #avatar-image {
        height: 200px;
    }

    .round {
        border-radius: 100px;
    }

    .item.user {
        margin-top: 3.5vh;
    }

    #password {
        font-weight: 300;
    }

    #password, #password:focus {
        outline: none;
    }

    #password::placeholder {
        font-style: italic;
        color: rgba($secondary-color, 0.55);
        opacity: 1;
    }

    #password {
        margin-top: 4.5vh;

        background: $password-field-background;
        caret-color: $password-field-caret;
        color: $secondary-color;

        padding-left: 15px;
        padding-right: 15px;
        font-size: 24px;

        width: 400px;
        height: 54px;

        border: none;
        border-bottom: solid 3px;
        border-top-left-radius: 4px;
        border-top-right-radius: 4px;
    }

    #password.error {
        border-bottom-color: $error-color;
    }

    #password.immutable {
        display: inline-block;
        background: $password-field-background-setup;
        border-bottom-width: 6px;
    }

    #info {
        color: rgba(255, 255, 255, 0.875);

        font-size: 22px;
        font-weight: 300;
        font-style: italic;

        text-align: center;

        margin-top: 15px;
        height: 31px;
    }

    .item.desktop {
        margin-top: 6vh;
        display: inline-block;
    }

    .item.user {
        display: inline-block;
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
        #password {
            height: 49px;
            font-size: 22px;
        }
    }

    .power-fade-enter-active {
        transition: all .3s ease;
    }

    .power-fade-enter {
        opacity: 0;
    }
</style>
