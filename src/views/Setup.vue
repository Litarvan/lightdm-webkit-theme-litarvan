<template>
    <div class="setup" :class="{ 'fix': fix }">
        <h1 id="setup-title">{{ texts.setup }}</h1>

        <div id="layouts">
            <div id="classic-layout" class="layout" @click="select('classic')" :class="{ selected: settings.mode === 'classic' }">
                <Login id="classic" :immutable="true" :compact="false" />
            </div>

            <div id="compact-layout" class="layout" @click="select('compact')" :class="{ selected: settings.mode === 'compact' }">
                <Login id="compact" :immutable="true" :compact="true" />
            </div>
        </div>

        <div id="left-settings" class="settings">
            <div class="checkbox-line"><Checkbox v-model="settings.disableSplash" /><label>{{ texts.disableSplash }}</label></div>
            <div class="checkbox-line"><Checkbox v-model="settings.disableSplashText" /><label>{{ texts.disableSplashText }}</label></div>
            <div class="checkbox-line"><Checkbox v-model="settings.disableIntro" /><label>{{ texts.disableIntro }}</label></div>
            <div class="checkbox-line"><Checkbox v-model="settings.clock12" /><label>{{ texts.clock12 }}</label></div>
        </div>

        <div id="right-settings" class="settings">
            <div class="checkbox-line"><Checkbox v-model="settings.disableFade" /><label>{{ texts.disableFade }}</label></div>
            <div class="checkbox-line"><Checkbox v-model="settings.roundAvatar" /><label>{{ texts.roundAvatar }}</label></div>
            <div class="checkbox-line"><Checkbox v-model="settings.disableAvatar" /><label>{{ texts.disableAvatar }}</label></div>
            <div class="disable-zoom">-<div class="checkbox-line"><Checkbox v-model="settings.disableZoom" /><label>{{ texts.disableZoom }}</label></div></div>
        </div>

        <div @click="save()">
            <PowerButton id="back" type="back" />
        </div>

        <PowerButton id="theming" type="theming" />
    </div>
</template>

<script>
    import PowerButton from '@/components/PowerButton';
    import Login from './Login.vue';
    import Checkbox from '@/components/Checkbox.vue';

    import { trans } from '@/translations';
    import { settings, save } from '@/settings';

    export default {
        name: 'setup',
        components: { PowerButton, Login, Checkbox },

        data() {
            return {
                settings: settings,
                fix: !lightdm_debug,
                texts: {
                    setup: trans('setup'),
                    disableSplash: trans('disableSplash'),
                    disableSplashText: trans('disableSplashText'),
                    disableIntro: trans('disableIntro'),
                    disableFade: trans('disableFade'),
                    roundAvatar: trans('roundAvatar'),
                    disableAvatar: trans('disableAvatar'),
                    disableZoom: trans('disableZoom'),
                    clock12: trans('clock12')
                }
            }
        },
        methods: {
            select(layout) {
                this.settings.mode = layout;
            },
            save() {
                save(this.settings);
            }
        }
    }
</script>

<style lang="scss">
    @import '../theme';

    .setup {
        font-family: 'Lato', 'Noto Sans', sans-serif;
        font-weight: 300;
        font-style: italic;

        color: $outer-foreground;
    }

    #setup-title {
        font-size: 72px;
        font-weight: 300;
        margin-top: 7vh;
    }

    #layouts {
        margin-top: 6.5vh;
        font-style: normal;
    }

    #layouts, .layout {
        height: 35vh;
        min-height: 200px;
    }

    .layout {
        display: inline-block;

        border: solid 2px $outer-foreground;
        border-radius: 2px;
        transition: border-color 125ms ease-in-out;

        width: 35%;
        min-width: 300px;
        height: 35vh;
        min-height: 200px;

        text-align: center;
    }

    .layout:hover {
        cursor: pointer;
        border-color: lighten($primary-color, 25);
    }

    .layout.selected {
        border-color: $primary-color;
    }

    #classic-layout {
        float: left;
        margin-left: 10%;
    }

    #compact-layout {
        float: right;
        margin-right: 10%;
    }

    #classic, #compact {
        height: 0;
        transform: scale(0.4);
        width: 240%; // Needed, or it is too small for the content
        margin-left: -70%; // When changing the width, this makes the content centered again

        .item.user, .item.desktop {
            display: block;
        }

        .item.user:hover, .item.desktop:hover {
            background: none;
        }
    }

    #classic {
        #login-content {
            margin-top: 4.65vh;

            &.no-avatar {
                margin-top: calc(15.5vh - 50px);
            }
        }
    }

    #compact {
        .clock {
            margin-top: 3.5vh;
        }

        #login-content {
            margin-top: 9vh;
        }
    }

    @media (max-height: 850px) {
        #classic {
            #login-content {
                margin-top: 3.75vh;
            }
        }

        #setup-title {
            margin-top: 5.5vh;
        }

        #layouts {
            margin-top: 5.15vh;
        }

        #classic #avatar {
            margin-top: 3.5vh;
        }
    }

    label {
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
        display: inline-block;
        width: calc(35vw - 120px);
    }

    .settings {
        display: inline-block;

        margin-top: 7vh;

        text-align: left;
        font-size: 30px;

        width: 35%;

        .checkbox-line {
            margin-bottom: 18px;
        }

        .checkbox {
            display: inline-block;
            vertical-align: super;
            margin-right: 20px;
            margin-bottom: -8px;
        }
    }

    .fix {
        .checkbox {
            vertical-align: initial;
            margin-bottom: -5px;
        }

        .checkbox-line {
            margin-bottom: 26px;
        }
    }

    @media (min-width: 1450px) {
        .settings {
            padding-left: 15px;
        }
    }

    #right-settings {
        margin-left: 11%;
    }

    #left-settings {
        margin-left: 3%;
    }

    #back {
        position: absolute;
        bottom: 20px;
        left: 20px;
    }

    #theming {
        position: absolute;
        bottom: 20px;
        right: 20px;
    }

    @media (max-height: 775px) {
        #right-settings {
            margin-left: 10%;
        }

        #left-settings {
            margin-left: 2.25%;
        }
    }

    .disable-zoom {
        color: black
    }

    .disable-zoom .checkbox-line {
        display: none;
        color: white;
    }

    @media screen and (min-width: 3000px) and (min-height: 1200px) {
        .disable-zoom .checkbox-line {
            display: block;
        }
    }
</style>