<template>
    <div class="base">
        <div class="bg" :class="{ 'blured': isBlured() }">
        </div>

        <transition name="fade">
            <router-view/>
        </transition>
    </div>
</template>

<script>
    export default {
        name: 'base',
        methods: {
            isBlured() {
                return this.$router.currentRoute.name.startsWith('login');
            }
        }
    };
</script>

<style>
    .bg {
        background-image: url('../assets/images/background.jpg');
        position: fixed;
        left: 0;
        right: 0;

        display: block;
        width: 100%;
        height: 100vh;

        z-index: -1;
        transition: filter 500ms ease-in-out;
    }

    .blured {
        filter: blur(10px);
    }
</style>