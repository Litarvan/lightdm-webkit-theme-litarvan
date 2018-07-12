<template>
    <div class="splash">
        <transition name="logo-fade">
            <img id="logo" src="../assets/images/arch.svg" v-if="show"/>
        </transition>
    </div>
</template>

<script>
    export default
    {
        name: 'splash',

        mounted()
        {
            this.show = true;

            setTimeout(() => {
                this.show = false;
                this.$router.push('home');
            }, 2000);
        },

        data()
        {
            return {
                show: false
            };
        }
    };
</script>

<style scoped>
    .splash {
        background-color: black;

        display: flex;
        align-items: center;
        text-align: center;
    }

    #logo {
        height: 250px;

        margin-left: auto;
        margin-right: auto;
    }

    .logo-fade-enter-active, .logo-fade-leave-active {
        transition: opacity 1s;
    }

    .logo-fade-enter, .logo-fade-leave-to {
        opacity: 0;
    }
</style>