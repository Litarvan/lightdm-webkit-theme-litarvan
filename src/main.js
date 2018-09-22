import Vue from 'vue'
import './lightdm';

import Buefy from 'buefy';
import 'buefy/lib/buefy.css'

import App from './App.vue'
import router from './router';

Vue.config.productionTip = false;
Vue.use(Buefy);

new Vue({
    router,
    render: h => h(App)
}).$mount('#app');
