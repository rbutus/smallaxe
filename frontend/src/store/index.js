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
    events: [],
    about: [],
    facts: [],
    hours: [],
    contact: [],
    menus: [],
  },
  getters: {
    quotes: (state) => state.loadQuotes,
    menuImage: (state) => state.loadMenuImage,
    covid: (state) => state.loadCovid,
    photos: (state) => state.loadPhotos,
    events: (state) => state.loadEvents,
    about: (state) => state.about,
    facts: (state) => state.facts,
    hours: (state) => state.hours,
    contact: (state) => state.contact,
    menus: (state) => state.loadMenus,
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
    SET_EVENTS(state, events) {
      state.events = events;
    },
    SET_ABOUT(state, about) {
      state.about = about;
    },
    SET_FACTS(state, facts) {
      state.facts = facts;
    },
    SET_HOURS(state, hours) {
      state.hours = hours;
    },
    SET_CONTACT(state, contact) {
      state.contact = contact;
    },
    SET_MENUS(state, menus) {
      state.menus = menus;
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
    loadMenus({ commit }) {
      const menus = [
          ['menu-main-title', 'menu-main-items'],
          ['menu-weekend-breakfast-title', 'menu-weekend-breakfast-items'],
          ['menu-weekday-breakfast-title', 'menu-weekday-breakfast-items'],
          ['menu-drinks-title', 'menu-drinks'],
          ['menu-happy-hour-title', 'happy-hours'],
          ['menu-drink-specials-title', 'menu-drink-specials-items'],
      ];
      const allMenus = [];
      Object.values(menus).forEach(async (menu) => {
        const title = await axios.get(menu[0]).then((res) => res.data);
        const menuItems = await axios.get(menu[1]).then((res) => res.data);
        if (title.enabled === true) {
          const menuMain = {
              title: title.name,
              hours: title.hours,
              menuItems,
          };
          allMenus.push(menuMain);
        }
      });
      commit('SET_MENUS', allMenus);
    },
    loadAbout({ commit }) {
        axios.get('about')
        .then((res) => res.data)
        .then((about) => {
            commit('SET_ABOUT', about);
        });
    },
    loadEvents({ commit }) {
      axios.get('events')
        .then((res) => res.data)
        .then((events) => {
          commit('SET_EVENTS', events);
        });
    },
    loadFacts({ commit }) {
        axios.get('facts')
        .then((res) => res.data)
        .then((facts) => {
            commit('SET_FACTS', facts);
        });
    },
    loadHours({ commit }) {
        axios.get('hours')
        .then((res) => res.data)
        .then((hours) => {
          commit('SET_HOURS', hours);
        });
    },
    loadContact({ commit }) {
      axios.get('contact')
        .then((res) => res.data)
        .then((contact) => {
          commit('SET_CONTACT', contact);
        });
    },
  },
});
