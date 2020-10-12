<template>
  <div>
    <p class="phone">250.838.2385</p>
    <div class="container">
      <logo/>
      <div class="row">
        <div class="col-7">
          <quote/>
        </div>
        <div class="col-5">
          <img class="cat img-fluid" src="../assets/img/tacocat_color_trans.png"/>
        </div>
      </div>
    </div>
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
  color: #fdbe57;
  background-color:#231f20;
  padding: 10pt;
  position: relative;
}

.cat {
  width: 200pt;
}
.phone {
  font-size: 20pt;
  position: relative;
}
</style>
