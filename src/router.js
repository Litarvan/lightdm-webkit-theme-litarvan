import Vue from 'vue';
import Router from 'vue-router';
import Home from './views/Home.vue';
import Splash from './views/Splash.vue';

Vue.use(Router);

export default new Router({
    routes: [
        {
            path: '/',
            redirect: '/splash/initial'
        },
        {
            path: '/splash/:state',
            name: 'splash',
            component: Splash
        },
        {
            path: '/home',
            name: 'home',
            component: Home
        }
    ]
});
