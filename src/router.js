import { createRouter, createWebHashHistory } from 'vue-router';

import Base from './views/Base.vue';
import Blur from './views/Blur.vue';
import Intro from './views/Intro.vue';
import Login from './views/Login.vue';
import Setup from './views/Setup.vue';
import Select from './views/Select.vue';
import Splash from './views/Splash.vue';
import Theming from './views/Theming.vue';

const routes = [
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
    path: '/blur',
    name: 'blur',
    component: Blur
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
];

const router = createRouter({
  // history: createWebHistory(), // webkit2gtk 2.40+ not support. (securityerror)
  history: createWebHashHistory(),
  routes
});

export default router

