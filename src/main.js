import { createApp } from 'vue'

import './lightdm';

import router from './router.js';
import App from './App.vue';
import { hook } from './themer.js';
import italicHook from './italic.js';
//
// Vue.config.productionTip = false;
//
// Vue.directive('theming', {
//     bind(el, { value }) {
//         hook(el, value);
//     }
// });
//
// Vue.directive('italic', {
//     bind(el, { modifiers }) {
//         italicHook(el, modifiers.custom)
//     },
//     update(el, { modifiers }) {
//         italicHook(el, modifiers.custom);
//     }
// });
//
const app = createApp(App)

app.directive('theming', {
  beforeMount(el, { value }) {
    hook(el, value);
  }
});

app.directive('italic', {
  beforeMount(el, { modifiers }) {
    italicHook(el, modifiers.custom)
  },
  updated(el, { modifiers }) {
    italicHook(el, modifiers.custom);
  }
});

app.use(router)
app.mount('#app')

// new Vue({
//     router,
//     render: h => h(App)
// }).$mount('#app');
