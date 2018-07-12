<template>
    <div id="app">
        <transition name="fade">
            <router-view/>
        </transition>
    </div>
</template>

<style lang="scss">
    @font-face {
        font-family: 'Lato';
        src: url('assets/fonts/Lato-Regular.ttf');
    }

    @font-face {
        font-family: "Lato";
        font-style: italic;
        src: url('assets/fonts/Lato-Italic.ttf');
    }

    @font-face {
        font-family: 'Lato';
        font-weight: 300;
        src: url('assets/fonts/Lato-Light.ttf');
    }

    @font-face {
        font-family: "Lato";
        font-style: italic;
        font-weight: 300;
        src: url('assets/fonts/Lato-LightItalic.ttf');
    }

    html, body, #app, #app > * {
        margin: 0;
        padding: 0;

        height: 100vh;

        overflow-y:hidden;
    }

    #app {
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;

        text-align: center;

        color: white;
    }

    .fade-enter-active, .fade-leave-active {
        transition-property: opacity;
        transition-duration: .3s;
    }

    .fade-enter-active {
        transition-delay: .3s;
    }

    .fade-enter, .fade-leave-active {
        opacity: 0
    }
</style>
