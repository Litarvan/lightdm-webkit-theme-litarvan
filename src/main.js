import Vue from 'vue'
import App from './App.vue'
import Buefy from 'buefy';
import router from './router';

Vue.config.productionTip = false;
Vue.use(Buefy);

new Vue({
  router,
  render: h => h(App)
}).$mount('#app');
