<template>
  <div class="hours-contact">
    <div class="hours">
      <div class="hours-header">HOURS</div>
      <div v-html="hours.hours"></div>
    </div>
    <div>
      <div class="headers contact">CONTACT</div>
      <div class="phone">
      <a v-html="contact.phone" :href="tel + contact.phone"></a>
      </div>
      <div v-html="contact.address"></div>
      <a class="email" v-html="contact.email" :href="mailTo + contact.email"></a>
    </div>
    <div id="contact-id"></div>
    <a href="https://api.smallaxeroadhouse.ca/admin">
      <img class="tacocat" src="../assets/img/tacocat_bw_transparent.png"/>
    </a>
  </div>
</template>

<script>
import { mapState } from 'vuex';

export default {
  data() {
    return {
      mailTo: 'mailto:',
      tel: 'tel:',
    };
  },
  computed: mapState([
    'hours',
    'contact',
  ]),
  created() {
    this.$store.dispatch('loadHours');
    this.$store.dispatch('loadContact');
  },
};
</script>

<style>
.hours-contact {
  padding-top: 1em;
  background-color: rgb(0,0,0,0.8);
  color: grey;
  padding-top: 2em;
  height: 100%;
  padding-bottom: 2em;
  font-size: 2vh;
}

#contact-id {
  padding-top: 2em;
}
.hours {
  padding-top: 1em;
  font-size: 2.5vh;
}
.phone {
  font-size: 3vh;
  text-decoration: none;
}
.email {
  text-decoration: none;
}
.contact {
  padding-top: 1.5em;
}

.hours-header {
  font-size: 1.5em;
}
.tacocat {
  width: 20pt;
}

a:hover {
  text-decoration: none;
}

a {
  color: inherit;
}
</style>
