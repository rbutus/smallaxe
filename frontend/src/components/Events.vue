<template>
  <div class="events" id="events-id">
    <div class="headers">Events</div>
    <li v-for="(event, i) in events" v-bind:key="'event_' + i">
      <div class="date-title">{{ event.date }} - {{ event.title }}</div>
      <div class="event-description">{{ event.description }}</div>
      <div>
      <!-- <img class="event-poster" alt="event poster"
      :src="path + event.poster.url"> -->
      </div>
    </li>
  </div>
</template>

<script>
// import axios from 'axios';
import { mapState } from 'vuex';
import moment from 'moment';

const baseURL = process.env.VUE_APP_API_ENDPOINT;

export default {
  name: 'events-request',
  data() {
    return {
      path: baseURL,
    };
  },
  computed: mapState([
    'events',
  ]),
  created() {
    this.$store.dispatch('loadEvents');
  },
  methods: {
    formatDate: (dt) => {
      moment(dt, 'yyyy-mm-dd');
    },
  },
};
</script>

<style>

.events {
  color: rgb(10,10,10);
  background-color: #b84697;
  opacity: 0.9;
  padding-top: 2em;
  height: 100%;
  padding-bottom: 2em;
  font-size: 3vh;
  border: 5px solid #f63dc5;
}

.date-title {
  font-size: 2.5vh;
}
.event-description {
  font-size: 2vh;
  color: #2f2f2f;
}
.event-poster {
  width: 90%;
  max-width: 600pt;
}
</style>
