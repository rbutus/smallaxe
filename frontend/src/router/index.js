import Vue from 'vue';
import Router from 'vue-router';

Vue.use(Router);

function lazyLoad(view) {
  const path = '../views/Home.vue';
  console.log(path);
  return () => import(`../views/${view}.vue`);
}

export default new Router({
  mode: 'history',
  base: process.env.BASE_URL,
  routes: [
    {
      path: '/',
      name: 'Home',
      component: lazyLoad('Home'),
    },
    {
      path: '/covid',
      name: 'Covid',
      component: lazyLoad('Covid'),
    },
    {
      path: '/gallery',
      name: 'Gallery',
      component: lazyLoad('Gallery'),
    },
    {
      path: '/menu',
      name: 'Menu',
      component: lazyLoad('Menu'),
    },
  ],
});
