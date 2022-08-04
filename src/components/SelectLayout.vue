<template>
    <div class="item" :class="{ 'selected': selected }" v-theming="['border-bottom-color']" v-italic @click="select()"></div>
</template>

<script>
    import { settings, save } from '@/settings';

    export default {
        name: 'l-select-layout',
        props: ['selected'],

        data() {
            return {
                settings,
                save,
            };
        },
        methods: {
            select() {
                this.$emit('select');
            },
        }
    };
</script>

<style lang="scss" scoped>
    .item {
        font-family: 'Lato', 'Noto Sans', sans-serif;

        border-radius: 5px;
        transition: background-color 125ms ease-in-out;

        min-width: 150px;
    }

    .item.selected {
        border-bottom: solid 2px;
        background: rgba(255, 255, 255, 0.055);
    }

    .item:hover {
        cursor: pointer;
        background: rgba(255, 255, 255, 0.115);
    }
</style>
