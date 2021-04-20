import Vue from 'vue';
import './lightdm';

import App from './App.vue';
import router from './router';
import { hook } from './themer';
import italicHook from './italic';

Vue.config.productionTip = false;

Vue.directive('theming', {
    bind(el, { value }) {
        hook(el, value);
    }
});

Vue.directive('italic', {
    bind(el, { modifiers }) {
        italicHook(el, modifiers.custom)
    },
    update(el, { modifiers }) {
        italicHook(el, modifiers.custom);
    }
});

new Vue({
    router,
    render: h => h(App)
}).$mount('#app');
