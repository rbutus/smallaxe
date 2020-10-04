<template>
  <div>
    <div class="quote">
      "{{ quote.text }}"
    </div>
    <a href="http://localhost:1337/admin" class="staff">
      - Staff
    </a>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  name: 'post-request',
  data() {
    return {
      quote: null,
    };
  },
  methods: {
    getAbout() {
      const path = 'http://localhost:1337/quote';
      axios.get(path)
        .then((res) => {
          this.quote = res.data;
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
