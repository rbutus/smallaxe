<template>
  <div>
    <div id="app">
    <Navbar/>
      <router-view/>
    </div>
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

html, body {
  height: 100%;
}

body {
  background-image: url('./assets/img/tacocat_00dbdb_transparent.png');
  background-size: 10pt;
  height: 100%;
  overflow: scroll;
}

</style>
