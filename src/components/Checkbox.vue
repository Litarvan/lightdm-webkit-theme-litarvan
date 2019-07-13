<template>
    <div class="checkbox" @click="update" ref="box">
    </div>
</template>

<script>
    import { getColor } from '../themer';

    export default {
        name: 'checkbox',
        props: ['value'],

        mounted() {
            this.updateStyle();
        },
        data() {
            return {
                checked: this.value
            }
        },

        methods: {
            update() {
                this.$emit('input', this.checked = !this.checked);
                this.updateStyle();
            },
            updateStyle() {
                const style = this.$refs.box.style;
                const color = this.checked ? getColor('primary') : null;

                style['border-color'] = color;
                style['background'] = color;

                console.log(color);
                console.log(style);
            }
        }
    }
</script>

<style lang="scss">
    @import '../theme';

    .checkbox {
        border: solid 2px;
        border-radius: 2px;

        transition: border-color 150ms ease-in-out, background 125ms ease-in-out;

        width: 30px;
        height: 30px;

        display: inline-block;
    }

    .checkbox:hover {
        cursor: pointer;
    }

    .checkbox.checked {
        border-color: $primary-color;
        background: $primary-color;
    }
</style>
