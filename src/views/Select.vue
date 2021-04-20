<template>
    <div id="select">
        <div id="content">
            <l-select-item
                    v-for="item of content"

                    :key="item[type.key]"
                    :mode="mode"
                    :item="item"
                    :selected="item[type.key] === selected[type.key]"

                    @select="select(item)"
            />
        </div>
    </div>
</template>

<script>
    import LSelectItem from '@/components/SelectItem';
    import { save, settings } from '@/settings';

    const modes = {
        user: { field: 'users', name: 'display_name', key: 'username' },
        desktop: { field: 'sessions', name: 'name', key: 'key' }
    };

    export default {
        name: 'l-select',
        components: { LSelectItem },
        data() {
            let mode = this.$route.params.mode;
            let type = modes[mode];

            return {
                mode,
                type,
                content: lightdm[type.field] || [],
                selected: settings[mode] || {}
            }
        },

        methods: {
            select(obj) {
                settings[this.mode] = obj;
                save();
                this.$router.back();
            }
        }
    }
</script>

<style lang="scss" scoped>
    #select {
        display: flex;
        align-items: center;
        justify-content: center;

        font-family: 'Lato', 'Noto Sans', sans-serif;
        font-weight: normal;
        font-size: 44px;

        text-align: left;
    }
</style>