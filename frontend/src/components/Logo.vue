<template>
  <div>
    <img :src="logo">
  </div>
</template>

<script>
import axios from 'axios';

export default {
  name: 'post-request',
  data() {
    return {
      logo: null,
    };
  },
  methods: {
    getLogo() {
      const pathRoot = 'http://localhost:1337';
      const pathLogo = pathRoot.concat('/logo');
      axios.get(pathLogo)
        .then((res) => {
          this.logo = pathRoot.concat(res.data.image[0].url);
        });
    },
  },
  created() {
    this.getLogo();
  },
};
</script>
<style scoped>
div {
  margin: 20px;
}

img {
  width: 100px;
  height: 100px;
}
</style>
