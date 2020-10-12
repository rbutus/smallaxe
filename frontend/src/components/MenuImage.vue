<template>
  <div>
  </div>
</template>

<script>
import { mapState } from 'vuex';

export default {
  name: 'menu-image-request',
  data() {
    return {
      admin_path: baseURL.concat('/menu-image'),
    };
  },
  computed: mapState([
  'menuImage',
  ]),
  created() {
    this.$store.dispatch('loadMenuImage');
  },
};
</script>