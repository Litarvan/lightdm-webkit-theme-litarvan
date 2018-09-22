<template>
    <div class="checkbox" :class="{ 'checked': checked }" @click="update">
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

<style>
    .checkbox {
        border: solid 2px white;
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
        border-color: #3DA7EE;
        background: #3DA7EE;
    }
</style>