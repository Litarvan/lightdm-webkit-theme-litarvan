import Vue from 'vue'
import './lightdm';

import App from './App.vue'
import router from './router';

Vue.config.productionTip = false;

new Vue({
    router,
    render: h => h(App)
}).$mount('#app');
