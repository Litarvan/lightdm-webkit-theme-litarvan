<template>
    <div class="power-button">
        <div id="button-container" @click="disabled ? '' : apply()">
            <img id="power-button-icon" :class="{ type }" :src="require('../assets/images/' + type + '.svg')"/>
        </div>
    </div>
</template>

<script>
    import { settings } from '@/settings';

    export default {
        name: 'power-button',
        props: ['type', 'disabled'],
        methods: {
            apply() {
                if (this.type === 'back') {

                    this.$router.push(settings.disableSplash || !settings.first ? '/base/login' : '/base/splash');

                    if (settings.first) {
                        settings.first = false;
                    }

                    return;
                }

                if (this.type === 'settings') {
                    this.$router.push('/setup');
                    return;
                }

                if (this.type === 'theming') {
                    this.$router.push('/theming');
                    return;
                }

                setTimeout(lightdm[this.type], 1500);
                this.$router.push(`/intro/${this.type}`)
            }
        },
        data() {
            return {
                types: ['shutdown', 'suspend', 'restart', 'settings', 'back']
            }
        }
    }
</script>

<style lang="scss" scoped>
    @import '../theme';

    #button-container {
        transition: background 125ms ease-in-out;
        border-radius: 6px;
        line-height: 1;
    }

    #button-container:hover {
        background: rgba(255, 255, 255, 0.08);
        cursor: pointer;
    }

    #power-button-icon {
        box-sizing: initial;

        padding: 10px 10px 10px;

        width: 42px;
        height: 42px;
    }
</style>
