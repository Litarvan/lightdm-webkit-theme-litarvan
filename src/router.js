import { createRouter, createWebHashHistory } from 'vue-router';

import Login from './views/Login.vue';
import Splash from './views/Splash.vue';
import Base from './views/Base.vue';
import Intro from './views/Intro.vue';
import Setup from './views/Setup.vue';
import Select from './views/Select.vue';
import Theming from './views/Theming.vue';
import Blur from './views/Blur.vue';

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
  // history: createWebHistory(), // webkit2gtk 2.40+ not supported securityerror,
  history: createWebHashHistory(),
  routes
});

export default router

