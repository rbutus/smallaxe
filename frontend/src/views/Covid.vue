<template>
<div>
  <div class="bg-black-covid"></div>
    <div class="covid">
      <li v-for="(cov, i) in covidComments" v-bind:key="'covidcomments_' + i">
       {{ cov.text }}
      </li>
      <br/>
      <div>Please click on the following links for more information:</div>
      <br/>
      <li v-for="(cov, i) in covidLinks" v-bind:key="'covidlinks_' + i">
        <a :href="cov.link" v-html="cov.organization"></a>
      </li>
    </div>
</div>
</template>

<script>
import { mapState } from 'vuex';

export default {
  name: 'get-request',
  computed: mapState([
    'covidComments',
    'covidLinks',
  ]),
  created() {
    this.$store.dispatch('loadCovidComments');
    this.$store.dispatch('loadCovidLinks');
  },
};
</script>

<style scoped>
.covid {
  padding-top: 20%;
  font-size: 2.5vh;
  position: relative;
  z-index: 3;
  list-style-type: none;
  max-width: 90%;
  margin: 5pt auto;
  color: #9c7b9e;
}

.bg-black-covid {
  padding-top: 60pt;
  background-color: rgba(0,0,0,0.9);
  height: 100vh;
  width: 100%;
  position: fixed;
  z-index: 0;
}
</style>
