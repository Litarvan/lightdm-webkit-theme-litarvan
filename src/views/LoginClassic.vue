<template>
    <div class="login">
        Bouh!

        <PowerButton id="shutdown" type="shutdown"></PowerButton>
        <PowerButton id="reboot" type="restart"></PowerButton>
    </div>
</template>

<script>
    import PowerButton from '@/components/PowerButton.vue';

    export default {
        name: 'login-classic',
        components: {
            PowerButton
        },
        mounted() {
            window.addEventListener('keyup', this.submit);
        },
        methods: {
            submit(event) {
                if (event.which === 27) {
                    this.$router.push('/base/home');
                }
            }
        }
    }
</script>

<style>
    #shutdown {
        position: absolute;
        bottom: 20px;
        left: 20px;
    }

    #reboot {
        position: absolute;
        bottom: 20px;
        right: 20px;
    }
</style>