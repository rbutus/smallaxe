<template>
<div>
  <ul>
  <li v-for="(cov, i) in covid" v-bind:key="'cov_' + i">
    <a v-bind:href="cov.link">
      {{ cov.text }}
    </a>
  </li>
  </ul>
</div>
</template>

<script>
import { mapState } from 'vuex';

export default {
  name: 'get-request',
  computed: mapState([
    'covid',
  ]),
  created() {
    this.$store.dispatch('loadCovid');
  },
};
</script>

<style scoped>
div {
  font-size: 15pt;
}
</style>
