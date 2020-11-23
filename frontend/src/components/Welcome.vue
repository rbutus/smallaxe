<template>
  <div class="welcome">
    <div class="welcome-header">Welcome!</div>
    <b-container>
      <b-row>
        <b-col>
          <img class="tacocat-color" src="../assets/img/tacocat_color_trans.png"/>
        </b-col>
        <b-col>
          <img class="logo-home" src="../assets/img/logo_bw.png"/>
        </b-col>
        <b-col>
          <img class="tacocat-color" src="../assets/img/tacocat_color_trans.png"/>
        </b-col>
      </b-row>
    </b-container>
    <div class="about-container">
    <div class="about" v-html="about.text"></div>
    </div>
    <div class="facts">
      <li v-for="(fact, i) in facts" v-bind:key="'fact_' + i">
        <b-badge pill>{{ fact.text }}</b-badge>
      </li>
    </div>
  </div>
</template>

<script>
import { mapState } from 'vuex';

export default {
  computed: mapState([
    'about',
    'facts',
  ]),
  created() {
    this.$store.dispatch('loadAbout');
    this.$store.dispatch('loadFacts');
  },
};
</script>

<style>
.welcome {
  padding-top: 0;
  padding-bottom: 2em;
  color: rgb(10,10,10);
  height: 100%;
  background-image: url('../assets/img/tacocat_00dbdb_transparent.png');
  background-size: 10pt;
  font-size: 2.5vh;
  opacity: 0.9;
  /* border: 5px solid black; */
}
.welcome-header {
  font-size: 6vh;
}
.about {
  max-width: 90%;
  margin: 0 auto;
  padding-top: 30pt;
}
.facts {
  padding-top: 1em;
  font-size: 3.5vh;
}
.tacocat-color {
  width: 80%;
}
.border-img {
  width: calc(100vw - 10vw);
  position: absolute;
  left: 5vw;
}
.about-container {
  position: relative;
}
.logo-home {
    width: 100%;
}
</style>
