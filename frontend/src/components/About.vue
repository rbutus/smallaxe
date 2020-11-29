<template>
  <div class="about">
    <div
      class="text-center"
      v-for="item in about" v-bind:key="item"
    > {{ item.description }}
    </div>
  </div>
</template>

<script>
import axios from 'axios';
import marked from 'marked';

export default {
  name: 'post-request',
  data() {
    return {
      about: null,
    };
  },
  methods: {
    getAbout() {
      const path = 'http://localhost:1337/abouts';
      axios.get(path)
        .then((res) => {
          this.about = res.data;
        });
    },
  },
  filters: {
    marked,
  },
  created() {
    this.getAbout();
  },
};
</script>

<style>

.about {
  background-color: #00dbdb;
  padding: 20pt;
}

</style>
