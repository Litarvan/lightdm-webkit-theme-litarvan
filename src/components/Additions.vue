<template>
    <div id="additions" :class="{ 'small': small }">
        <div id="battery-container" v-if="canAccessBattery">
            <img id="battery-icon" :src="require('../assets/images/battery/' + batteryIcon + '.svg')" />
            <span id="battery-value">
                {{ batteryValue }}
            </span>
        </div>

        <div id="brightness-container" v-if="canAccessBrightness">
            <img id="brightness-icon" :src="require('../assets/images/brightness/' + brightnessIcon + '.svg')" />
            <span id="brightness-value">
                {{ brightnessValue }}
            </span>
        </div>
    </div>
</template>

<script>

    export default {
        name: 'l-additions',
        props: ['small'],
        data() {
            return {
                batteryIcon: 'battery_1',
                batteryValue: '15%',
                canAccessBattery: lightdm?.can_access_battery ?? false,

                brightnessIcon: 'brightness_high',
                brightnessValue: '85%',
                canAccessBrightness: lightdm?.can_access_brightness ?? false,
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
                this.batteryValue = `${level}%`;
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

                this.brightnessValue = `${brightness}%`;
            },
        },
        mounted() {
            if (lightdm?.can_access_battery) {
                lightdm?.battery_update.connect(this.on_battery_update);
            }
            if (lightdm?.can_access_brightness) {
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

        justify-self: flex-start;
        align-self: center;
        margin: 3em 0em;
        gap: 1em;
    }

    #battery-container, #brightness-container {
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
    #battery-icon, #brightness-icon {
        padding: .4em .2em .4em .4em;
        width: 1.8em;
        height: 1.8em;
    }
    #battery-value, #brightness-value {
        padding: .4em .4em .4em .2em;
    }

    #additions.small {
        margin: 1em 0em;
        gap: 0.5em;

        #battery-value, #brightness-value {
            padding: .2em .2em .2em .1em;
        }

        #battery-icon, #brightness-icon {
            padding: .2em .1em .2em .2em;
            width: 1.2em;
            width: 1.2em;
        }

        #battery-container, #brightness-container {
            padding: 0.1em;
        }
    }
</style>
