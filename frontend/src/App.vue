<template>
  <div class="app-font">
    <Navbar/>
    <div class="bg-black-home"></div>
    <div id="app" class="bg-img"></div>
    <div class="router"><router-view/></div>
  </div>
</template>

<script>
import Navbar from './components/Navbar.vue';

export default {
  components: {
    Navbar,
  },
};
</script>

<style>
@import './app.css';

.bg-img {
  background-image: url('./assets/img/smallaxe_new_crop.jpg');
  background-repeat: no-repeat;
  background-size: cover;
  height: 100vh;
  position: fixed;
  width: 100%;
  top: 0;
  z-index:0;
}

.bg-black-home {
  background-color: rgba(0,0,0,0.3);
  height: 100vh;
  width: 100%;
  top: 0;
  position: fixed;
  z-index:1;
}

.router {
  position: relative;
  z-index:2;
  height: 100%;
}

</style>
