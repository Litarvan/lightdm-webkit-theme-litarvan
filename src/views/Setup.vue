<template>
    <div class="setup">
        <h1 id="setup-title">Setup</h1>

        <div id="layouts">
            <div id="classic-layout" class="layout" @click="select('classic')" :class="{ selected: this.selected === 'classic' }">
                <Login id="classic" :immutable="true" :compact="false" />
            </div>

            <div id="compact-layout" class="layout" @click="select('compact')" :class="{ selected: this.selected === 'compact' }">
                <Login id="compact" :immutable="true" :compact="true" />
            </div>
        </div>

        <div id="left-settings" class="settings">
            <div class="checkbox-line"><Checkbox v-model="disableSplash" /><label>Disable splash ("Press Enter" screen)</label></div>
            <div class="checkbox-line"><Checkbox v-model="disableSplashText" /><label>Disable splash text (Clock only)</label></div>
            <div class="checkbox-line"><Checkbox v-model="disableIntro" /><label>Disable intro (OS logo)</label></div>
        </div>

        <div id="right-settings" class="settings">
            <div class="checkbox-line"><Checkbox v-model="disableFade" /><label>Disable fade to black after login </label></div>
            <div class="checkbox-line"><Checkbox v-model="roundAvatar" /><label>Round avatar</label></div>
            <div class="checkbox-line"><Checkbox v-model="disableAvatar" /><label>Disable avatar</label></div>
        </div>
    </div>
</template>

<script>
    import Login from './Login.vue';
    import Checkbox from '../components/Checkbox.vue';

    export default {
        components: {
            Login,
            Checkbox
        },
        data() {
            return {
                selected: 'classic',

                disableSplash: false,
                disableSplashText: false,
                disableIntro: false,
                disableFade: false,
                roundAvatar: false,
                disableAvatar: false
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

    #classic, #compact {
        height: 0;
        transform: scale(0.4);
    }

    #classic {
        #avatar {
            margin-top: 5vh;
        }
    }

    #compact {
        #avatar {
        }
    }

    @media (max-height: 850px) {
        #setup-title {
            margin-top: 5.5vh;
        }

        #layouts {
            margin-top: 5.15vh;
        }

        #classic #avatar {
            margin-top: 3.5vh;

            #avatar-image {
                width: 190px;
            }
        }
    }

    .settings {
        display: inline-block;

        margin-top: 7vh;

        text-align: left;
        font-size: 30px;

        width: 35%;

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

    #right-settings {
        margin-left: 11%;
    }

    #left-settings {
        margin-left: 3%;
    }

    @media (max-height: 775px) {
        #right-settings {
            margin-left: 10%;
        }

        #left-settings {
            margin-left: 2.25%;
        }
    }
</style>