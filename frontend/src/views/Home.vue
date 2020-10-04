<template>
  <div>
    <h3 style="padding-top: 10pt">COMING SOON!</h3>
      <Logo/>
      <Quote/>
  </div>
</template>

<script>
// import About from '../components/About.vue';
import Logo from '../components/Logo.vue';
import Quote from '../components/Quote.vue';
// import Menu from '../components/Menu.vue';

export default {
  components: {
    // About,
    Logo,
    Quote,
    // Menu,
  },
};
</script>
<style>

h3 {
  color: #00dbdb;
  background-color: black;
  padding: 10pt;
}

</style>
