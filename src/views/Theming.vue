<script setup>
import LCheckbox from '@/components/Checkbox.vue';
import LPowerButton from '@/components/PowerButton.vue';

import { ref, reactive, onMounted, watch } from 'vue'

import { background, backgrounds, color, DEFAULT_COLOR } from '@/themer';
import { trans } from '@/translations';
import { settings } from '@/settings';

const bg = ref(0)
const title = trans('theming')
const bgPath = greeter_config.branding.background_images_dir || greeter_config.branding.background_images
const bgAddLabel = trans('bgAdd')
const randomizeLabel = trans('randomizeBG')
const colorLabel = trans('primaryColor')

const rgb = reactive({
    r: 0, g: 0, b: 0,
    tohex() {
        function toh(n) {
            const hex = Math.min(255, Math.max(0, n)).toString(16);
            return hex.length === 1 ? '0' + hex : hex;
        }
        return toh(this.r) + toh(this.g) + toh(this.b);
    }
})

onMounted(() => {
    const [rs, gs, bs] = toRGB(color.value);
    rgb.r = rs
    rgb.g = gs
    rgb.b = bs

    for (const b in backgrounds) {
        if (background.value === backgrounds[b]) {
            bg.value = +b;
            break;
        }
    }
})

function reset() {
    color.value = DEFAULT_COLOR;
}

function filterHex(ev) {
    if (!(!color.value.startsWith('#') && ev.location === 0 && ev.key === '#') && !ev.key.match(/[A-f\d]/)) {
        ev.preventDefault();
    }
}

function filterRGB(ev) {
    if (!ev.key.match(/\d/)) {
        ev.preventDefault();
    }

    // I use instead of watch to prevent recursive hex <=> rgb watch
    color.value = (color.value.startsWith('#') ? '#' : '') + rgb.tohex();
}

function toRGB(hex) {
    if (hex.length < (hex.startsWith('#') ? 3 : 2)) {
        return [];
    }

    return (hex.startsWith('#') ? hex.substring(1) : hex).match(/[A-f\d]{2}/g).map(s => parseInt(s, 16));
}

function nextBG() {
    if (bg.value === backgrounds.length - 1) {
        bg.value = 0;
    } else {
        bg.value++;
    }
}

function prevBG() {
    if (bg.value === 0) {
        bg.value = backgrounds.length - 1;
    } else {
        bg.value--;
    }
}

// update rbg when color changes
watch(color, () => {
    const [r, g, b] = toRGB(color.value);
    !isNaN(r) && (rgb.r = r);
    !isNaN(g) && (rgb.g = g);
    !isNaN(b) && (rgb.b = b);
})

watch(bg, (val) => {
    background.value = backgrounds[val];
})

function getImageUrl(name) {
    return new URL(`../assets/images/${name}`, import.meta.url).href
}
</script>

<template>
    <div id="theming-view">
        <h1 id="theming-title">{{ title }}</h1>

        <div id="theming-content">
            <div id="color-theming">
                <div id="colors">
                    <div class="color">
                        <span class="color-label">{{ colorLabel }}</span> <img class="color-reset" @click="reset()"
                            :src="getImageUrl('restart.svg')" />
                        <div>
                            <span class="color-value" v-italic>{{ color }}</span>
                            <div class="color-preview" :style="'background-color: ' + color + ';'"></div>
                        </div>
                    </div>
                </div>
                <div id="color-picking">
                    <div id="picking-preview" :style="'background-color: ' + color + ';'"></div>
                    <div id="picking-title" v-italic>{{ colorLabel }}</div>

                    <div>
                        <label for="picking-hex">Hex : <input id="picking-hex" v-model="color" maxlength="7"
                                @keypress="filterHex" v-italic /></label>
                    </div>
                    <div id="rgb">
                        <label for="picking-r">R : <input id="picking-r" v-model="rgb.r" maxlength="3" @keyup="filterRGB"
                                v-italic /></label>
                        <label for="picking-g">G : <input id="picking-g" v-model="rgb.g" maxlength="3" @keyup="filterRGB"
                                v-italic /></label>
                        <label for="picking-b">B : <input id="picking-b" v-model="rgb.b" maxlength="3" @keyup="filterRGB"
                                v-italic /></label>
                    </div>
                </div>
            </div>

            <div id="background-theming">
                <img id="background" :src="backgrounds[bg]" />
                <div id="background-switch">
                    <img :src="getImageUrl('back.svg')" @click="prevBG" />
                    <span class="background-label" v-italic>Background</span>
                    <img :src="getImageUrl('next.svg')" @click="nextBG" />
                </div>

                <div id="random-check">
                    <LCheckbox v-model="settings.randomizeBG" /><span class="background-label" v-italic>{{ randomizeLabel
                    }}</span>
                </div>
            </div>
        </div>

        <div id="background-message" v-italic>
            {{ bgAddLabel }} {{ bgPath }}
        </div>

        <LPowerButton id="back" type="back" />
    </div>
</template>

<!-- <script> -->
<!--     import LCheckbox from '@/components/Checkbox.vue'; -->
<!--     import LPowerButton from '@/components/PowerButton.vue'; -->
<!---->
<!--     import { background, color, updateColor, updateBG, DEFAULT_COLOR, backgrounds } from '../themer'; -->
<!--     import { trans } from '@/translations'; -->
<!--     import { settings } from '@/settings'; -->
<!---->
<!--     export default { -->
<!--         name: 'l-theming', -->
<!--         components: { LCheckbox, LPowerButton }, -->
<!---->
<!--         async mounted() { -->
<!--             this.hex = this.color; // To call the watcher -->
<!---->
<!--             this.backgrounds = backgrounds(); -->
<!--             for (const bg in this.backgrounds) { -->
<!--                 if (background === this.backgrounds[bg]) { -->
<!--                     this.background = +bg; -->
<!--                     break; -->
<!--                 } -->
<!--             } -->
<!--         }, -->
<!--         data() { -->
<!--             return { -->
<!--                 title: trans('theming'), -->
<!--                 backgrounds: [], -->
<!--                 background: 0, -->
<!--                 bgPath: greeter_config.branding.background_images_dir || -->
<!--                         greeter_config.branding.background_images, -->
<!--                 bgAddLabel: trans('bgAdd'), -->
<!--                 settings, -->
<!--                 randomizeLabel: trans('randomizeBG'), -->
<!--                 color: color, -->
<!--                 colorLabel: trans('primaryColor'), -->
<!--                 hex: '', -->
<!--                 r: 0, -->
<!--                 g: 0, -->
<!--                 b: 0 -->
<!--             } -->
<!--         }, -->
<!--         methods: { -->
<!--             reset() { -->
<!--                 this.hex = DEFAULT_COLOR; -->
<!--             }, -->
<!--             filterHex(ev) { -->
<!--                 if (!(!this.hex.startsWith('#') && ev.location === 0 && ev.key === '#') && !ev.key.match(/[A-f\d]/)) { -->
<!--                     ev.preventDefault(); -->
<!--                 } -->
<!--             }, -->
<!--             filterRGB(ev) { -->
<!--                 if (!ev.key.match(/\d/)) { -->
<!--                     ev.preventDefault(); -->
<!--                 } -->
<!---->
<!--                 this.hex = this.toHex(this.r, this.g, this.b); // I use this instead of watch to prevent recursive hex <=> rgb watch -->
<!--             }, -->
<!--             toHex(...rgb) { -->
<!--                 return (this.hex.startsWith('#') ? '#' : '') + rgb.map(n => { -->
<!--                     const hex = Math.min(255, Math.max(0, n)).toString(16); -->
<!--                     return hex.length === 1 ? '0' + hex : hex; -->
<!--                 }).join(''); -->
<!--             }, -->
<!--             toRGB(hex) { -->
<!--                 if (hex.length < (hex.startsWith('#') ? 3 : 2)) { -->
<!--                     return []; -->
<!--                 } -->
<!---->
<!--                 return (hex.startsWith('#') ? hex.substring(1) : hex).match(/[A-f\d]{2}/g).map(s => parseInt(s, 16)); -->
<!--             }, -->
<!--             nextBG() { -->
<!--                 if (this.background === this.backgrounds.length - 1) { -->
<!--                     this.background = 0; -->
<!--                 } else { -->
<!--                     this.background++; -->
<!--                 } -->
<!--             }, -->
<!--             prevBG() { -->
<!--                 if (this.background === 0) { -->
<!--                     this.background = this.backgrounds.length - 1; -->
<!--                 } else { -->
<!--                     this.background--; -->
<!--                 } -->
<!--             } -->
<!--         }, -->
<!--         watch: { -->
<!--             hex(val) { -->
<!--                 this.color = val; -->
<!---->
<!--                 const [r, g, b] = this.toRGB(val); -->
<!--                 !isNaN(r) && (this.r = r); -->
<!--                 !isNaN(g) && (this.g = g); -->
<!--                 !isNaN(b) && (this.b = b); -->
<!---->
<!--                 updateColor(val); -->
<!--             }, -->
<!--             background(val) { -->
<!--                 updateBG(this.backgrounds[val]); -->
<!--             } -->
<!--         } -->
<!--     } -->
<!-- </script> -->

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
}
</style>
