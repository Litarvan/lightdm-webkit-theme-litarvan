<template>
    <div id="theming-view">
        <h1 id="theming-title">Theming</h1>

        <div id="theming-content">
            <div id="color-theming">
                <div id="colors">
                    <div class="color" v-for="(themable, i) of colors">
                        <span class="color-label">{{ themable.label }}</span>
                        <div class="clickable" @click="edit(i)">
                            <span class="color-value">{{ themable.hex }}</span>
                            <div class="color-preview" :style="'background-color: ' + themable.hex + ';'"></div>
                        </div>
                    </div>
                </div>
                <div id="color-picking" v-if="editing >= 0">
                    <div id="picking-preview" :style="'background-color: ' + colors[editing].hex + ';'"></div>
                    <div id="picking-title">{{ colors[editing].label }}</div>

                    <div>
                        <label for="picking-hex">Hex : <input id="picking-hex" v-model="hex" maxlength="9" /></label>
                    </div>
                    <div id="rgb">
                        <label for="picking-r">R : <input id="picking-r" v-model="r" maxlength="3" /></label>
                        <label for="picking-g">G : <input id="picking-g" v-model="g" maxlength="3" /></label>
                        <label for="picking-b">B : <input id="picking-b" v-model="b" maxlength="3" /></label>
                    </div>
                </div>
            </div>

            <div id="background-theming">
                <img id="background" src="../assets/images/background.png" />
                <span id="background-label">Background</span>
            </div>
        </div>

        <PowerButton id="back" type="back" />
    </div>
</template>

<script>
    import PowerButton from '../components/PowerButton';

    export default {
        name: 'theming',
        components: { PowerButton },

        data() {
            return {
                colors: [
                    { label: 'Primary color', hex: '#249cea' },
                    { label: 'Secondary color', hex: '#ffffff' },
                    { label: 'Error color', hex: '#de3c2d' },
                    { label: 'Password field background', hex: '#ffffff32' }
                ],
                editing: -1,
                hex: '',
                r: 0,
                g: 0,
                b: 0
            }
        },
        methods: {
            edit(id) {
                this.editing = id;
                this.hex = this.colors[id].hex;
            },
            toHex(...rgb) {
                return (this.hex.startsWith('#') ? '#' : '') + rgb.map(n => {
                    const hex = Math.min(255, Math.max(0, n)).toString(16);
                    return hex.length === 1 ? '0' + hex : hex;
                }).join('');
            },
            toRGB(hex) {
                return (hex.startsWith('#') ? hex.substring(1) : hex).match(/[A-f\d]{2}/g).map(s => parseInt(s, 16));
            }
        },
        watch: {
            hex(val) {
                this.colors[this.editing].hex = val;

                const [r, g, b] = this.toRGB(val);
                this.r = r;
                this.g = g;
                this.b = b;
            },
            r(val) {
                this.hex = this.toHex(val, this.g, this.b);
            },
            g(val) {
                this.hex = this.toHex(this.r, val, this.b);
            },
            b(val) {
                this.hex = this.toHex(this.r, this.g, val);
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

    .color-value {
        font-style: italic;
        margin-left: 15px;
        font-weight: 300;
    }

    .clickable:hover {
        cursor: pointer;
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
        text-align: center;
    }

    #background {
        width: 75%;
        border-radius: 5px;
    }

    #background-label {
        display: block;
        margin-top: 20px;

        font-size: 28px;
        font-weight: 300;
        font-style: italic;
    }
</style>
