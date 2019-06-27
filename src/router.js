import Vue from 'vue';
import Router from 'vue-router';
import Login from './views/Login.vue';
import Splash from './views/Splash.vue';
import Base from './views/Base.vue';
import Intro from './views/Intro.vue';
import Setup from './views/Setup.vue';
import Select from './views/Select.vue';
import Theming from './views/Theming';

Vue.use(Router);

export default new Router({
    routes: [
        {
            path: '/setup',
            name: 'setup',
            component: Setup
        },
        {
            path: '/theming',
            name: 'theming',
            component: Theming
        },
        {
            path: '/intro/:state',
            name: 'intro',
            component: Intro
        },
        {
            path: '/base',
            name: 'base',
            component: Base,
            children: [
                {
                    path: 'splash',
                    name: 'splash',
                    component: Splash,
                },
                {
                    path: 'login',
                    name: 'login',
                    component: Login
                },
                {
                    path: 'select/:mode',
                    name: 'select',
                    component: Select
                }
            ]
        }
    ]
});
