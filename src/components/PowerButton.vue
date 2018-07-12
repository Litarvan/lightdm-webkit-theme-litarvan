<template>
    <div class="power-button">
        <div id="button-container" v-on:click="apply()">
            <img v-if="type === 'shutdown'" class="power-button-icon" src="../assets/images/shutdown.svg" />
            <img v-if="type === 'reboot'" class="power-button-icon" src="../assets/images/reboot.svg" />
        </div>
    </div>
</template>

<script>
    import LightDM from '@/lightdm';

    export default {
        props: [
            'type'
        ],
        methods: {
            apply() {
                setTimeout(LightDM[this.type], 1500);
                this.$router.push(`/splash/${this.type}`)
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
        background: rgba(255, 255, 255, 0.075);
        cursor: pointer;
    }

    .power-button-icon {
        box-sizing: initial;
        color: white;

        padding: 10px 10px 7.5px;

        width: 42px;
        height: 42px;
    }
</style>