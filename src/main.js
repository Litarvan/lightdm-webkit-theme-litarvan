import { createApp } from 'vue'

import './lightdm';

import App from './App.vue';
import router from './router';
import { hook } from './themer';
import italicHook from './italic';

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

