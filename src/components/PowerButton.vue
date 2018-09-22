<template>
    <div class="power-button">
        <div id="button-container" @click="disabled ? '' : apply()">
            <img id="power-button-icon" :class="{ type }" :src="require('../assets/images/' + type + '.svg')" />
        </div>
    </div>
</template>

<script>
    import LightDM from '@/lightdm';

    export default {
        props: ['type', 'disabled'],
        methods: {
            apply() {
                if (this.type === 'back') {
                    this.$router.back();
                    return;
                }

                if (this.type === 'settings') {
                    this.$router.push('/setup');
                    return;
                }

                setTimeout(LightDM[this.type], 1500);
                this.$router.push(`/splash/${this.type}`)
            }
        },
        data() {
            return {
                types: ['shutdown', 'suspend', 'restart', 'settings', 'back']
            }
        }
    }
</script>

<style scoped>
    #button-container {
        transition: background 125ms ease-in-out;
        border-radius: 6px;
        line-height: 1;
    }

    #button-container:hover {
        background: rgba(255, 255, 255, 0.07);
        cursor: pointer;
    }

    #power-button-icon {
        box-sizing: initial;
        color: white;

        padding: 10px 10px 10px;

        width: 42px;
        height: 42px;
    }
</style>