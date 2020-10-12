<template>
  <div>
    <VueGallery :images="photos" :index="index" @close="index = null"></VueGallery>
    <div
      class="image"
      v-for="(image, imageIndex) in photos"
      :key="imageIndex"
      @click="index = imageIndex"
      :style="{ backgroundImage: 'url(' + image + ')',
      width: '300px', height: '200px' }"
    ></div>
    <h1>{{ debug(photos) }}</h1>
  </div>
</template>

<script>
import { mapState } from 'vuex';
import VueGallery from 'vue-gallery';

const baseURL = process.env.VUE_APP_API_ENDPOINT;
export default {
  computed: {
    ...mapState([
      'photos',
    ]),
  },
  data() {
    return {
      path: baseURL,
      index: null,
    };
  },
  components: {
    VueGallery,
  },
  created() {
    this.$store.dispatch('loadPhotos');
  },
  methods: {
    debug(heya) {
      console.log(heya);
    },
  },
};
</script>

<style scoped>
.image {
  float: left;
  background-size: cover;
  background-repeat: no-repeat;
  background-position: center center;
  border: 1px solid #ebebeb;
  margin: 5px;
}
</style>
