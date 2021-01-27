<template>
    <div id="theming-view">
        <h1 id="theming-title">{{ title }}</h1>

        <div id="theming-content">
            <div id="color-theming">
                <div id="colors">
                    <div class="color">
                        <span class="color-label">{{ colorLabel }}</span> <img class="color-reset" @click="reset()" src="../assets/images/restart.svg" />
                        <div>
                            <span class="color-value">{{ color }}</span>
                            <div class="color-preview" :style="'background-color: ' + color + ';'"></div>
                        </div>
                    </div>
                </div>
                <div id="color-picking">
                    <div id="picking-preview" :style="'background-color: ' + color + ';'"></div>
                    <div id="picking-title">{{ colorLabel }}</div>

                    <div>
                        <label for="picking-hex">Hex : <input id="picking-hex" v-model="hex" maxlength="7" @keypress="filterHex" /></label>
                    </div>
                    <div id="rgb">
                        <label for="picking-r">R : <input id="picking-r" v-model="r" maxlength="3" @keyup="filterRGB" /></label>
                        <label for="picking-g">G : <input id="picking-g" v-model="g" maxlength="3" @keyup="filterRGB" /></label>
                        <label for="picking-b">B : <input id="picking-b" v-model="b" maxlength="3" @keyup="filterRGB" /></label>
                    </div>
                </div>
            </div>

            <div id="background-theming">
                <img id="background" :src="backgrounds[background]" />
                <div id="background-switch">
                    <img src="../assets/images/back.svg" @click="prevBG" />
                    <span class="background-label">Background</span>
                    <img src="../assets/images/next.svg" @click="nextBG" />
                </div>

                <div id="random-check">
                    <Checkbox v-model="settings.randomizeBG" /><span class="background-label">{{ randomizeLabel }}</span>
                </div>
            </div>
        </div>

        <div id="background-message">
            {{ bgAddLabel }} {{ bgPath }}
        </div>

        <div @click="saveSettings()">
            <PowerButton id="back" type="back" />
        </div>
    </div>
</template>

<script>
    import Checkbox from '../components/Checkbox';
    import PowerButton from '../components/PowerButton';
    import { background, color, updateColor, updateBG, DEFAULT_COLOR, backgrounds } from '../themer';
    import { trans } from '../translations';
    import { settings, save as saveSettings } from '../settings';

    export default {
        name: 'theming',
        components: { Checkbox, PowerButton },

        mounted() {
            this.hex = this.color; // To call the watcher

            for (const bg in this.backgrounds) {
                if (background === this.backgrounds[bg]) {
                    this.background = +bg;
                    break;
                }
            }
        },
        data() {
            return {
                title: trans('theming'),
                backgrounds: backgrounds(),
                background: 0,
                bgPath: greeter_config.branding.background_images,
                bgAddLabel: trans('bgAdd'),
                settings,
                saveSettings,
                randomizeLabel: trans('randomizeBG'),
                color: color,
                colorLabel: trans('primaryColor'),
                hex: '',
                r: 0,
                g: 0,
                b: 0
            }
        },
        methods: {
            reset() {
                this.hex = DEFAULT_COLOR;
            },
            filterHex(ev) {
                if (!(!this.hex.startsWith('#') && ev.location === 0 && ev.key === '#') && !ev.key.match(/[A-f\d]/)) {
                    ev.preventDefault();
                }
            },
            filterRGB(ev) {
                if (!ev.key.match(/\d/)) {
                    ev.preventDefault();
                }

                this.hex = this.toHex(this.r, this.g, this.b); // I use this instead of watch to prevent recursive hex <=> rgb watch
            },
            toHex(...rgb) {
                return (this.hex.startsWith('#') ? '#' : '') + rgb.map(n => {
                    const hex = Math.min(255, Math.max(0, n)).toString(16);
                    return hex.length === 1 ? '0' + hex : hex;
                }).join('');
            },
            toRGB(hex) {
                if (hex.length < (hex.startsWith('#') ? 3 : 2)) {
                    return [];
                }

                return (hex.startsWith('#') ? hex.substring(1) : hex).match(/[A-f\d]{2}/g).map(s => parseInt(s, 16));
            },
            nextBG() {
                if (this.background === this.backgrounds.length - 1) {
                    this.background = 0;
                } else {
                    this.background++;
                }
            },
            prevBG() {
                if (this.background === 0) {
                    this.background = this.backgrounds.length - 1;
                } else {
                    this.background--;
                }
            }
        },
        watch: {
            hex(val) {
                this.color = val;

                const [r, g, b] = this.toRGB(val);
                !isNaN(r) && (this.r = r);
                !isNaN(g) && (this.g = g);
                !isNaN(b) && (this.b = b);

                updateColor(val);
            },
            background(val) {
                updateBG(this.backgrounds[val]);
            }
        }
    }
</script>

<style lang="scss">
    @import "../theme";

    #theming-view {
        color: $outer-foreground;
        text-align: left;

        font-family: 'Lato', 'Noto Sans', sans-serif;

        padding: 35px;
        box-sizing: border-box;
    }

    #theming-title {
        font-size: 72px;
        font-weight: 300;
        margin: 0;

        margin-bottom: 15px;
    }

    #theming-content {
        display: flex;
        justify-content: space-between;

        width: 100%;
    }

    #color-theming {
        width: 50%;
        display: flex;
    }

    #colors {
        margin-top: 20px;
        margin-left: 20px;

        font-size: 24px;

        width: 50%;
    }

    .color {
        margin-top: 20px;
    }

    .color-label {
        cursor: default;
    }

    .color-reset {
        height: 25px;
        vertical-align: bottom;

        margin-left: 5px;

        &:hover {
            cursor: pointer;
        }
    }

    .color-value {
        font-style: italic;
        margin-left: 15px;
        font-weight: 300;
    }

    .color-preview {
        display: inline-block;
        margin-left: 10px;

        border-radius: 50px;

        width: 15px;
        height: 15px;

        vertical-align: middle;
    }

    #color-picking {
        border-left: solid 1px #ffffffaa;

        padding-top: 35px;
        padding-left: 45px;

        box-sizing: border-box;

        width: 50%;

        label {
            font-size: 18px;
        }

        input {
            border: none;
            border-bottom: solid 1px #ffffffcc;

            color: $outer-foreground;
            background: none;

            margin-left: 8px;

            font-size: 18px;
            font-family: 'Lato', 'Noto Sans', sans-serif;
            font-style: italic;
        }
    }

    #picking-preview {
        width: 100px;
        height: 100px;

        border-radius: 50%;
    }

    #picking-title {
        margin-top: 25px;

        font-size: 32px;
        font-weight: 300;
        font-style: italic;
    }

    #picking-hex {
        margin-top: 30px;
    }

    #rgb {
        margin-top: 8px;

        input {
            width: 35px;
            margin-right: 15px;

            font-style: normal;
        }
    }

    #background-theming {
        width: 50%;
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    #background {
        max-width: 75%;
        max-height: calc(100vh - 375px);

        border-radius: 5px;

        border: solid 1px white;
    }

    .background-label {
        cursor: default;

        font-size: 28px;
        font-weight: 300;
        font-style: italic;

        margin-top: 1px;
    }

    #background-switch {
        display: flex;
        justify-content: space-between;

        width: 75%;
        margin-top: 20px;

        align-items: center;

        img {
            height: 40px;

            padding: 10px;
            margin-left: 10px;
            margin-right: 10px;

            transition: background-color 125ms ease-in-out;

            border-radius: 4px;

            &:hover {
                background-color: rgba(255, 255, 255, 0.08);
                cursor: pointer;
            }
        }
    }

    #random-check {
        margin-top: 20px;

        .background-label {
            font-size: 24px;
        }

        .checkbox {
            margin-right: 17px;
            margin-bottom: -5px;

            width: 25px;
            height: 25px;
        }
    }

    #background-message {
        position: absolute;
        right: 40px;
        bottom: 35px;

        font-size: 28px;
        font-weight: 300;
        font-style: italic;
    }
</style>
