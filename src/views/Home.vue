<template>
    <div class="home">
        <Clock />
    </div>
</template>

<script>
    import Clock from '@/components/Clock.vue';

    export default
    {
        name: 'home',
        components: {
            Clock
        }
    };
</script>

<style>
    .home {
        background-image: url('../assets/images/background.jpg');
    }

    .clock {
        margin-top: 5vh;
        display: inline-block;
    }
</style>
