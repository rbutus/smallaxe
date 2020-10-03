<template>
  <div>
    <img src="http://localhost:1337/uploads/smallaxe_s_70f01f3a6f.png">
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
      const pathLogo = 'http://localhost:1337/logo';
      axios.get(pathLogo)
        .then((res) => {
          this.logo = res.data;
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
</style>
