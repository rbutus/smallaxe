<template>
  <div>
    <img src="@/assets/smallaxe-s.png">
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
      const pathRoot = 'http://api.smallaxeroadhouse.ca';
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

img:before {
  opacity: 0;
}
</style>
