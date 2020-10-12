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
    covid: [],
    photos: [],
  },
  getters: {
    quotes: (state) => state.loadQuotes,
    menuImage: (state) => state.loadMenuImage,
    covid: (state) => state.loadCovid,
    photos: (state) => state.loadPhotos,
  },
  mutations: {
    SET_QUOTES(state, quotes) {
      state.quotes = quotes;
    },
    SET_MENU_IMAGE(state, menuImage) {
      state.menuImage = menuImage;
    },
    SET_COVID(state, covid) {
      state.covid = covid;
    },
    SET_PHOTOS(state, photos) {
      const a = [];
      photos.forEach((obj) => {
        a.push(path.concat(obj.image[0].url));
      });
      state.photos = a;
      console.log(a);
    },
  },
  actions: {
    loadQuotes({ commit }) {
      axios.get('quotes')
        .then((res) => res.data)
        .then((quotes) => {
          console.log(quotes);
          commit('SET_QUOTES', quotes);
        });
    },
    loadMenuImage({ commit }) {
      axios.get('menuImage')
        .then((res) => res.data)
        .then((menuImage) => {
          console.log(menuImage);
          commit('SET_MENU_IMAGE', menuImage);
        });
    },
    loadCovid({ commit }) {
      axios.get('covids')
        .then((res) => res.data)
        .then((covid) => {
          console.log(covid);
          commit('SET_COVID', covid);
        });
    },
    loadPhotos({ commit }) {
      axios.get('photos')
        .then((res) => res.data)
        .then((photos) => {
          console.log(photos);
          commit('SET_PHOTOS', photos);
        });
    },

  },
});
