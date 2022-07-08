<template>
    <div id="additions" :class="{ 'small': small }">
        <div
            id="battery-container"
            class="addition-container"
            v-if="canAccessBattery"
        >
            <img
                id="battery-icon"
                class="addition-icon"
                :src="require('../assets/images/battery/' + batteryIcon + '.svg')"
            />
            <img
                id="battery-charging-icon"
                class="addition-icon"
                :src="require('../assets/images/battery/bolt.svg')"
                v-if="batteryIsCharging"
            />
            <span id="battery-value">
                {{ batteryValue }}%
            </span>
        </div>

        <div
            id="brightness-container"
            class="addition-container"
            v-if="canAccessBrightness"
            @mouseover="showBrightnessSlider = !preview ? true : false"
            @mouseleave="showBrightnessSlider = false"
        >
            <img
                id="brightness-icon"
                class="addition-icon"
                :src="require('../assets/images/brightness/' + brightnessIcon + '.svg')"
            />
            <transition name="expand">
                <input
                    id="brightness-slider"
                    type="range"
                    min="0"
                    max="100"
                    v-model="brightnessValue"
                    v-show="showBrightnessSlider"
                />
            </transition>
            <span id="brightness-value" >
                {{ brightnessValue }}%
            </span>
        </div>
    </div>
</template>

<script>

    export default {
        name: 'l-additions',
        props: ['small', 'preview'],
        data() {
            return {
                batteryIcon: 'battery_1',
                batteryValue: 15,
                batteryIsCharging: false,
                canAccessBattery: lightdm?.can_access_battery ?? false,

                brightnessIcon: 'brightness_high',
                brightnessValue: 85,
                canAccessBrightness: lightdm?.can_access_brightness ?? false,
                showBrightnessSlider: false,
            }
        },
        watch: {
            brightnessValue: function(val, oldValue) {
                if (val == oldValue)
                    return;
                lightdm.brightness = val;
            }
        },
        methods: {
            on_battery_update() {
                const batteryData = lightdm?.battery_data ?? null;
                if (batteryData == null) {
                    this.canAccessBattery = false;
                    return;
                }

                const level = batteryData.level ?? 0;
                const acStatus = batteryData.ac_status ?? false;

                if (level < 10) {
                    this.batteryIcon = "battery_0";
                } else if (level < 25) {
                    this.batteryIcon = "battery_1";
                } else if (level < 40) {
                    this.batteryIcon = "battery_2";
                } else if (level < 55) {
                    this.batteryIcon = "battery_3";
                } else if (level < 70) {
                    this.batteryIcon = "battery_4";
                } else if (level < 85) {
                    this.batteryIcon = "battery_5";
                } else if (level < 98) {
                    this.batteryIcon = "battery_6";
                } else {
                    this.batteryIcon = "battery_full";
                }
                this.batteryValue = level;
                this.batteryIsCharging = acStatus;
            },
            on_brightness_update() {
                const brightness = lightdm?.brightness ?? null;
                if (brightness == null) {
                    this.canAccessBrightness = false;
                    return;
                }

                if (brightness < 33) {
                    this.brightnessIcon = "brightness_low";
                } else if (brightness < 66) {
                    this.brightnessIcon = "brightness_medium";
                } else {
                    this.brightnessIcon = "brightness_high";
                }

                this.brightnessValue = brightness;
            },
        },
        mounted() {
            if (lightdm?.can_access_battery) {
                this.on_battery_update();
                lightdm?.battery_update.connect(this.on_battery_update);
            }
            if (lightdm?.can_access_brightness) {
                this.on_brightness_update();
                lightdm?.brightness_update.connect(this.on_brightness_update);
            }
        },
        beforeDestroy() {
            if (lightdm?.can_access_battery) {
                lightdm?.battery_update.disconnect(this.on_battery_update);
            }
            if (lightdm?.can_access_brightness) {
                lightdm?.brightness_update.disconnect(this.on_brightness_update);
            }
        }
    }
</script>

<style lang="scss" scoped>
    @import '../theme';

    #additions {
        display: flex;
        flex-direction: row;
        font-family: 'Lato', 'Noto Sans', sans-serif;

        justify-self: flex-start;
        align-self: center;
        margin: 3em 0em;
        gap: 1em;
    }

    .addition-container {
        transition: background 125ms ease-in-out;
        border-radius: 6px;
        width: auto;
        display: flex;
        align-items: center;
        padding: 0.5em;

        &:hover {
            background: rgba(255, 255, 255, 0.08);
        }
    }
    .addition-icon {
        padding: .4em .2em;
        height: 1.6em;
        width: 1.1em;

        &#brightness-icon {
            width: 1.6em;
            padding: .4em .2em .4em .4em;
        }
    }

    #battery-value, #brightness-value {
        padding: .4em;
    }

    #brightness-slider {
        -webkit-appearance: none;
        width: 12em;
        background: transparent;
    }
    input[type="range"]::-webkit-slider-thumb
    {
        -webkit-appearance: none;
        background: var(--primary-color);
        width: 1.2em;
        height: 1.2em;
        border-radius: 100%;
        border-width: 0;
        cursor: pointer;
        margin-top: -0.4em;
    }
    input[type="range"]::-moz-range-thumb
    {
        background: var(--primary-color);
        width: 1.2em;
        height: 1.2em;
        border-radius: 100%;
        border-width: 0;
        cursor: pointer;
    }

    input[type="range"]::-webkit-slider-runnable-track
    {
        width: 100%;
        height: 0.4em;
        background-color: #ffffff;
        border-radius: 6px;
        cursor: pointer;
    }
    input[type="range"]::-moz-range-track
    {
        width: 100%;
        height: 0.4em;
        background-color: #ffffff;
        border-radius: 6px;
        cursor: pointer;
    }

    .expand-enter-active, .expand-leave-active {
        transition: .5s;
        max-width: 12em;
    }
    .expand-enter, .expand-leave-to {
        max-width: 0;
        opacity: 0;
    }

    #additions.small {
        margin: 1em 0em;
        gap: 0.5em;

        #battery-value, #brightness-value {
            padding: .2em;
        }

        .addition-icon {
            padding: .2em .1em;
            height: 1.2em;
            width: 1em;

            &#brightness-icon {
                width: 1.2em;
                padding: .2em .1em .2em .2em;
            }
        }

        #battery-container, #brightness-container {
            padding: 0.1em;
        }

        #brightness-slider {
            width: 6em;
        }

        .expand-enter-active, .expand-leave-active {
            transition: .5s;
            max-width: 6em;
        }
        .expand-enter, .expand-leave-to {
            max-width: 0;
            opacity: 0;
        }
    }
</style>
