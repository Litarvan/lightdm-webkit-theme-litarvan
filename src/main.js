import Vue from 'vue';
import './lightdm';

import App from './App.vue';
import router from './router';
import { hook } from './themer';

Vue.config.productionTip = false;

Vue.directive('theming', {
    bind(el, { value }) {
        console.log(el);
        hook(el, value);
    }
});

new Vue({
    router,
    render: h => h(App)
}).$mount('#app');
