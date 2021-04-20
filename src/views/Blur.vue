<template>
    <div id="blur-view">
        <h1 id="blur-title" v-italic>Blur</h1>

        <div id="blur-content">
            <div class="radio-line"> <Radio v-model="settings.blur" value-key="fixed" /><label>Blurred background - fixed background</label></div>
            <div class="radio-line"> <Radio v-model="settings.blur" value-key="absolute" /><label>Blurred background - absolute background</label></div>
            <div class="radio-line"> <Radio v-model="settings.blur" value-key="static" /><label>Blurred background without transition</label></div>
            <div class="radio-line"> <Radio v-model="settings.blur" value-key="disabled" /><label>Disable background blurring</label></div>

            <p id="blur-help">
                If you are having issues with blur like lags or artifacts, please try a different blur method.<br/>
                You can disable the transition or even the entire blur if nothing is working.
            </p>
        </div>

        <div @click="saveSettings()">
            <PowerButton id="back" type="back" />
        </div>
    </div>
</template>

<script>
    import PowerButton from '../components/PowerButton';
    import { settings, save as saveSettings } from '../settings';
    import Radio from '../components/Radio';

    export default {
        name: 'blur',
        components: { Radio, PowerButton },

        data() {
            return {
                settings,
                saveSettings
            }
        }
    }
</script>

<style lang="scss">
    @import "../theme";

    #blur-view {
        font-family: 'Lato', 'Noto Sans', sans-serif;
        font-weight: 300;

        color: $outer-foreground;

        display: flex;
        flex-direction: column;
        justify-content: space-between;
        align-items: center;
    }

    #blur-title {
        font-size: 72px;
        font-weight: 300;
        margin-top: 7vh;
    }

    #blur-content {
        margin-bottom: 100px;

        font-size: 24px;
        font-style: italic;

        text-align: left;
    }

    .radio-line {
        margin-bottom: 15px;

        label {
            overflow: hidden;
            display: inline-block;

            margin-left: 15px;
            vertical-align: 2px;
        }
    }

    #blur-help {
        margin-top: 50px;
        text-align: center;
    }
</style>