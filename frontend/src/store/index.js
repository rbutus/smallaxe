import axios from 'axios';
import Vuex from 'vuex';
import Vue from 'vue';

Vue.use(Vuex);

axios.defaults.baseURL = process.env.VUE_APP_API_ENDPOINT;
const path = process.env.VUE_APP_API_ENDPOINT;
export default new Vuex.Store({
  state: {
    quotes: [],
    menuImage: [],
    covidComments: [],
    covidLinks: [],
    photos: [],
    menuWeekdayBreakfast: [],
    menuWeekendBreakfast: [],
    menuMain: [],
    menuDrinks: [],
    events: [],
    about: [],
    facts: [],
    happyHour: [],
  },
  getters: {
    quotes: (state) => state.loadQuotes,
    menuImage: (state) => state.loadMenuImage,
    covid: (state) => state.loadCovid,
    photos: (state) => state.loadPhotos,
    menuWeekendBreakfast: (state) => state.loadMenuWeekendBreakfast,
    menuWeekdayBreakfast: (state) => state.loadMenuWeekdayBreakfast,
    menuMain: (state) => state.loadMenuMain,
    menuDrinks: (state) => state.loadMenuDrinks,
    events: (state) => state.loadEvents,
    about: (state) => state.about,
    facts: (state) => state.facts,
    happyHour: (state) => state.happyHour,
  },
  mutations: {
    SET_QUOTES(state, quotes) {
      state.quotes = quotes;
    },
    SET_MENU_IMAGE(state, menuImage) {
      state.menuImage = menuImage;
    },
    SET_COVID_COMMENTS(state, covidComments) {
      state.covidComments = covidComments;
    },
    SET_COVID_LINKS(state, covidLinks) {
      state.covidLinks = covidLinks;
    },
    SET_PHOTOS(state, photos) {
      const a = [];
      photos.forEach((obj) => {
        a.push(path.concat(obj.image[0].url));
      });
      state.photos = a;
      console.log(a);
    },
    SET_MENU_WEEKEND_BREAKFAST(state, menuWeekendBreakfast) {
      state.menuWeekendBreakfast = menuWeekendBreakfast;
    },
    SET_MENU_WEEKDAY_BREAKFAST(state, menuWeekdayBreakfast) {
      state.menuWeekdayBreakfast = menuWeekdayBreakfast;
    },
    SET_MENU_MAIN(state, menuMain) {
      state.menuMain = menuMain;
    },
    SET_MENU_DRINKS(state, menuDrinks) {
      state.menuDrinks = menuDrinks;
    },
    SET_EVENTS(state, events) {
      state.events = events;
    },
    SET_ABOUT(state, about) {
      state.about = about;
    },
    SET_FACTS(state, facts) {
      state.facts = facts;
    },
    SET_HAPPY_HOUR(state, happyHour) {
      state.happyHour = happyHour;
    },
  },
  actions: {
    loadQuotes({ commit }) {
      axios.get('quotes')
        .then((res) => res.data)
        .then((quotes) => {
          commit('SET_QUOTES', quotes);
        });
    },
    loadMenuImage({ commit }) {
      axios.get('menuImage')
        .then((res) => res.data)
        .then((menuImage) => {
          commit('SET_MENU_IMAGE', menuImage);
        });
    },
    loadCovidComments({ commit }) {
      axios.get('covid-comments')
        .then((res) => res.data)
        .then((covidComments) => {
          commit('SET_COVID_COMMENTS', covidComments);
        });
    },
    loadCovidLinks({ commit }) {
      axios.get('covid-links')
        .then((res) => res.data)
        .then((covidLinks) => {
          commit('SET_COVID_LINKS', covidLinks);
        });
    },
    loadPhotos({ commit }) {
      axios.get('photos')
        .then((res) => res.data)
        .then((photos) => {
          commit('SET_PHOTOS', photos);
        });
    },
    loadMenuWeekendBreakfast({ commit }) {
      axios.get('menu-weekend-breakfast-items')
        .then((res) => res.data)
        .then((menuWeekendBreakfast) => {
          commit('SET_MENU_WEEKEND_BREAKFAST', menuWeekendBreakfast);
        });
    },
    loadMenuWeekdayBreakfast({ commit }) {
      axios.get('menu-weekday-breakfast-items')
        .then((res) => res.data)
        .then((menuWeekdayBreakfast) => {
          commit('SET_MENU_WEEKDAY_BREAKFAST', menuWeekdayBreakfast);
        });
    },
    loadMenuMain({ commit }) {
      axios.get('menu-main-items')
        .then((res) => res.data)
        .then((menuMain) => {
          commit('SET_MENU_MAIN', menuMain);
        });
    },
    loadMenuDrinks({ commit }) {
      axios.get('menu-drinks')
        .then((res) => res.data)
        .then((menuDrinks) => {
          commit('SET_MENU_DRINKS', menuDrinks);
        });
    },
    loadEvents({ commit }) {
      axios.get('events')
        .then((res) => res.data)
        .then((events) => {
          commit('SET_EVENTS', events);
        });
    },
    loadAbout({ commit }) {
      axios.get('about')
        .then((res) => res.data)
        .then((about) => {
          commit('SET_ABOUT', about);
        });
    },
    loadFacts({ commit }) {
      axios.get('facts')
        .then((res) => res.data)
        .then((facts) => {
          commit('SET_FACTS', facts);
        });
    },
    loadHappyHour({ commit }) {
      axios.get('happy-hours')
        .then((res) => res.data)
        .then((happyHour) => {
          commit('SET_HAPPY_HOUR', happyHour);
        });
    },
  },
});
