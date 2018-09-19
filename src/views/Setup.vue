<template>
    <div class="setup">
        <h1 id="setup-title">Setup</h1>

        <div id="layouts">
            <div id="classic-layout" class="layout" @click="select('classic')" :class="{ selected: this.selected === 'classic' }">
                <LoginClassic id="classic" immutable="true" />
            </div>

            <div id="compact-layout" class="layout" @click="select('compact')" :class="{ selected: this.selected === 'compact' }">
                hey
            </div>
        </div>

        <div id="left-settings" class="settings">
            <div class="checkbox-line"><Checkbox v-model="disableSplash" /><label>Disable splash ("Press Enter" screen)</label></div>
            <div class="checkbox-line"><Checkbox v-model="disableSplashText" /><label>Disable splash text (Clock only)</label></div>
            <div class="checkbox-line"><Checkbox v-model="disableIntro" /><label>Disable intro (OS logo)</label></div>
        </div>
    </div>
</template>

<script>
    import LoginClassic from './LoginClassic.vue';
    import Checkbox from '../components/Checkbox.vue';

    export default {
        components: {
            LoginClassic,
            Checkbox
        },
        data() {
            return {
                selected: 'classic',
                disableSplash: false,
                disableSplashText: false,
                disableIntro: false
            }
        },
        methods: {
            select(layout) {
                this.selected = layout;
            }
        }
    }
</script>

<style lang="scss">
    .setup {
        font-family: 'Lato', 'Noto Sans', sans-serif;
        font-weight: 300;
        font-style: italic;
    }

    #setup-title {
        font-size: 72px;
        font-weight: 300;
        margin-top: 7vh;
    }

    #layouts {
        margin-top: 6.5vh;
    }

    #layouts, .layout {
        height: 35vh;
        min-height: 200px;
    }

    .layout {
        display: inline-block;

        border: solid 2px white;
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
        border-color: #90c0e8;
    }

    .layout.selected {
        border-color: #249cea;
    }

    #classic-layout {
        float: left;
        margin-left: 10%;
    }

    #compact-layout {
        float: right;
        margin-right: 10%;
    }

    #classic {
        height: 0;
        transform: scale(0.4);

        #avatar {
            margin-top: 5vh;
        }
    }

    .settings {
        margin-top: 7vh;
        text-align: left;
        font-size: 30px;

        .checkbox-line {
            margin-bottom: 15px;
        }

        /*input[type=checkbox] {
            vertical-align: sub;
            margin-right: 17px;

            border: solid 2px white;
            border-radius: 2px;

            outline: none;
            background: black;

            width: 30px;
            height: 30px;

            margin-bottom: 20px;
        }*/

        .checkbox {
            margin-right: 17px;
            margin-bottom: -3px;
        }
    }

    #left-settings {
        width: 35%;
        margin-left: 12.5%;
    }
</style>