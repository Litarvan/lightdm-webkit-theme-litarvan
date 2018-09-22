<template>
    <div class="power-button">
        <div id="button-container" @click="disabled ? '' : apply()">
            <img v-if="type === 'shutdown'" class="power-button-icon" src="../assets/images/shutdown.svg" />
            <img v-if="type === 'suspend'" class="power-button-icon suspend" src="../assets/images/suspend.svg" />
            <img v-if="type === 'restart'" class="power-button-icon" src="../assets/images/reboot.svg" />
            <img v-if="type === 'settings'" class="power-button-icon" src="../assets/images/settings.svg" />
            <img v-if="type === 'back'" class="power-button-icon" src="../assets/images/back.svg" />
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

    .power-button-icon {
        box-sizing: initial;
        color: white;

        padding: 10px 10px 10px;

        width: 42px;
        height: 42px;
    }

    /*.power-button-icon.suspend {
        width: 52px;
        height: 52px;

        padding: 5px 5px 2.5px;
    }*/
</style>