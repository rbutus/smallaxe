<template>
  <div>
    <li v-for="quote in quotes" v-bind:key="quote">
      <div class="quote">
        "{{ quote.text }}"
      </div>
      <a href="http://api.smallaxeroadhouse.ca/admin" class="staff">
        - {{ quote.from }}
      </a>
    </li>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  name: 'post-request',
  data() {
    return {
      quotes: null,
    };
  },
  methods: {
    getAbout() {
      const path = 'http://api.smallaxeroadhouse.ca/quotes';
      axios.get(path)
        .then((res) => {
          this.quotes = res.data;
        });
    },
  },
  created() {
    this.getAbout();
  },
};
</script>

<style>

.quote {
  color: black;
  margin: 0 25% 0 25%;
  width: 50%;
}
.staff {
  color: grey;
  margin: 0 0 0 30%;
  padding-top: 5pt;
}

.staff:hover {
  color: #00dbdb;
  text-decoration: none;
}
</style>
