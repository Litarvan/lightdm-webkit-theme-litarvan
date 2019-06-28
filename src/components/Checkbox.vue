<template>
    <div class="checkbox" :class="{ 'checked': checked }" @click="update" v-theming="{ 'border-color': 'secondary' }">
    </div>
</template>

<script>
    export default {
        name: 'checkbox',
        props: ['value'],

        data() {
            return {
                checked: this.value
            }
        },

        methods: {
            update() {
                this.$emit('input', this.checked = !this.checked);
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
