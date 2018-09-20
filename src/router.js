import Vue from 'vue';
import Router from 'vue-router';
import Login from './views/Login.vue';
import Home from './views/Home.vue';
import Base from './views/Base.vue';
import Splash from './views/Splash.vue';
import Setup from './views/Setup.vue';

Vue.use(Router);

export default new Router({
    routes: [
        /*{
            path: '/',
            redirect: '/splash/initial'
        },*/
        {
            path: '/setup',
            name: 'setup',
            component: Setup
        },
        {
            path: '/splash/:state',
            name: 'splash',
            component: Splash
        },
        {
            path: '/base',
            name: 'base',
            component: Base,
            children: [
                {
                    path: 'home',
                    name: 'home',
                    component: Home,
                },
                {
                    path: 'login',
                    name: 'login',
                    component: Login
                }
            ]
        }
    ]
});
