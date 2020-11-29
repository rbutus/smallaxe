import Vue from 'vue';
import Vuex from 'vuex';
import {
  NavbarPlugin,
  LayoutPlugin,
  BadgePlugin,
} from 'bootstrap-vue';
import App from './App.vue';
import store from './store';
import router from './router/index';
import './assets/custom.scss';

Vue.config.productionTip = false;
Vue.use(Vuex);
Vue.use(NavbarPlugin);
Vue.use(LayoutPlugin);
Vue.use(BadgePlugin);

new Vue({
  store,
  router,
  render: (h) => h(App),
}).$mount('#app');
