<template>
  <div>
    <li v-for="(quote, i) in quotes" v-bind:key="'quote_' + i">
      <div class="quote">
        "{{ quote.text }}"
      </div>
      <a :href="admin_path" class="staff">
        - {{ quote.from }}
      </a>
    </li>
  </div>
</template>

<script>
// import axios from 'axios';
import { mapState } from 'vuex';

export default {
  name: 'post-request',
  computed: mapState([
    'quotes',
  ]),
  created() {
    this.$store.dispatch('loadQuotes');
  },
};
</script>

<style>
.quote {
  color: #231f20;
  width: 90%;
  font-size: 15pt;
  padding-top: 10pt;
}
.staff {
  color: rgb(70,70,70);
  margin: 0 0 0 30%;
  padding-top: 5pt;
  font-size: 10pt;
}

.staff:hover {
  color: #00dbdb;
  text-decoration: none;
}
</style>
