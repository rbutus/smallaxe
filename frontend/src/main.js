import Vue from 'vue';
import Vuex from 'vuex';
import { BootstrapVue, IconsPlugin } from 'bootstrap-vue';
// import Tinybox from 'vue-tinybox';
// import VuePictureSwipe from 'vue-picture-swipe';
import App from './App.vue';
import store from './store';
import router from './router/index';
import './assets/custom.scss';

Vue.config.productionTip = false;
Vue.use(Vuex);
Vue.use(BootstrapVue);
Vue.use(IconsPlugin);
// Vue.component('Tinybox', Tinybox);
// Vue.component('vue-picture-swipe', VuePictureSwipe);

new Vue({
  store,
  router,
  render: (h) => h(App),
}).$mount('#app');
