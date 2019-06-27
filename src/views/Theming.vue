<template>
    <div id="theming-view">
        <h1 id="theming-title">Theming</h1>

        <div id="theming-content">
            <div id="themables">
                <div class="themable" v-for="(themable, i) of themables">
                    <span class="themable-label">{{ themable.label }}</span>
                    <div class="clickable" @click="edit(i)">
                        <span class="themable-value">{{ themable.value }}</span>
                        <div class="color-preview" :style="'background-color: ' + themable.value + ';'"></div>
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
        components: { PowerButton },

        data() {
            return {
                themables: [
                    { label: 'Primary color', value: '#249cea' },
                    { label: 'Secondary color', value: '#ffffff' },
                    { label: 'Error color', value: '#de3c2d' },
                    { label: 'Password field background', value: '#ffffff32' }
                ]
            }
        },
        methods: {
            edit(id) {

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
    }

    #theming-content {
        display: flex;
        justify-content: space-between;

        width: 100%;
    }

    #themables {
        margin-top: 30px;
        margin-left: 20px;

        font-size: 24px;

        width: 50%;
    }

    .themable {
        margin-top: 20px;
    }

    .themable-value {
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
