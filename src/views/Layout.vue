<template>
    <div id="select-view">
        <h1 id="layout-title" v-italic>{{ texts.title }}</h1>

        <div id="select">
            <l-select-layout
                    v-for="layout of layouts"
                    v-text="layout.description"

                    :selected="layout.name === selected.name"

                    @select="select(layout)"
            />
        </div>

        <textarea id="textarea" :placeholder="texts.keyboardPlaceholder" v-theming="['border-bottom-color']" v-italic.custom></textarea>

        <l-power-button id="back" type="back" />
    </div>
</template>

<script>
    import LPowerButton from '@/components/PowerButton';
    import LSelectLayout from '@/components/SelectLayout';
    import { save, settings } from '@/settings';
    import { trans } from '@/translations';

    export default {
        name: 'l-layout-select',
        components: { LPowerButton, LSelectLayout },
        data() {
            return {
                layouts: lightdm.layouts.sort((a, b) => a.description >= b.description || -1) || [],
                selected: settings.layout || "",
                texts: {
                    title: trans('layouts'),
                    keyboardPlaceholder: trans('keyboardPlaceholder'),
                },
            }
        },

        methods: {
            select(layout) {
                settings.layout = layout;
                lightdm.layout = layout;
                save();
                this.$router.back();
            }
        }
    }
</script>

<style lang="scss" scoped>
    @import "../theme";

    #select-view {
        font-family: 'Lato', 'Noto Sans', sans-serif;
        font-weight: 300;

        color: $outer-foreground;

        display: flex;
        flex-direction: column;
        justify-content: space-between;
        align-items: center;
    }

    #layout-title {
        font-size: 72px;
        font-weight: 300;
        margin-top: 7vh;
    }

    #select {
        display: flex;
        flex-wrap: nowrap;
        flex-direction: column;
        overflow: auto;

        font-family: 'Lato', 'Noto Sans', sans-serif;
        font-weight: normal;
        font-size: 44px;

        text-align: center;
        margin-bottom: 7vh;

        scrollbar-width: thin;
        scrollbar-color: var(--primary-color);
    }

    #textarea {
        font-weight: 300;
    }

    #textarea, #textarea:focus {
        outline: none;
    }

    #textarea::placeholder {
        color: rgba($secondary-color, 0.55);
        opacity: 1;
    }

    #textarea.italic::placeholder {
        font-style: italic;
    }

    #textarea {
        margin-bottom: 3vh;
        resize: none;
                
        font-family: 'Lato', 'Noto Sans', sans-serif;

        background: $password-field-background;
        caret-color: $password-field-caret;
        color: $secondary-color;

        padding-left: 15px;
        padding-right: 15px;
        padding-top: 30px;
        font-size: 24px;
        rows: 3;

        width: 400px;

        border: none;
        border-bottom: solid 3px;
        border-top-left-radius: 4px;
        border-top-right-radius: 4px;

        scrollbar-width: none;
    }
</style>
