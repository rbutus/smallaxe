<template>
  <div class="home">
    <Logo/>
    <Welcome/>
    <Events/>
    <Contact/>
  </div>
</template>

<script>
import Logo from '../components/Logo.vue';
import Welcome from '../components/Welcome.vue';
import Events from '../components/Events.vue';
import Contact from '../components/Contact.vue';

export default {
  components: {
    Logo,
    Welcome,
    Events,
    Contact,
  },
};
</script>

<style>
.home {
  position: relative;
 z-index: 1;
}

.headers {
  font-size: 4vh;
}
</style>
