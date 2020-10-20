<template>
  <div>
    <div class="bg-black"></div>
    <div class="gallery">
      <VueGallery :images="photos" :index="index"
      @close="index = null"></VueGallery>
      <div
        class="image" id="start-gallery"
        v-for="(image, imageIndex) in photos"
        :key="imageIndex"
        @click="index = imageIndex"
        :style="{ backgroundImage: 'url(' + image + ')',
        width: '300px', height: '200px' }"
      ></div>
      <h1>{{ debug(photos) }}</h1>
    </div>
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
  mounted() {
    this.$store.dispatch('loadPhotos');
    this.startGallery();
  },
  methods: {
    debug(heya) {
      console.log(heya);
    },
    startGallery: setTimeout(() => {
      document.getElementById('start-gallery').click();
    }, 0),
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

.gallery {
  position: relative;
  z-index: 3;
  padding-top: 80pt;
}

.bg-black {
  background-color:rgba(0,0,0,0.9);
  height: 100vh;
  position: fixed;
  width: 100%;
  z-index:2;
}

</style>
