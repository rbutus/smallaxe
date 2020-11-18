<template>
  <div>
    <div class="fill-black"></div>
    <div class="menu">
      <div class="box" v-b-toggle.collapse-happy-hour>
        <div class="header-bg">
        <div v-for="(me, i) in menu" v-bind:key="'menu_' + i">
            <div>Hello</div>
          <div class="header">Happy Hour!</div>
          <div class="menu-times">2pm - 5pm daily!</div>
          <div class="plus">+</div>
                <div>{{ m.name }}</div>
        <b-collapse id="collapse-happy-hour">
            <li v-for="(m, i) in me" v-bind:key="'me_' + i">
            <div class="menu-info">
              <div class="item">{{ item.name }}</div>
              <div class="price">{{ item.price}}</div>
              <div class="description" v-html="item.description"></div>
            </div>
          </li>
        </b-collapse>
        </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { mapState } from 'vuex';

export default {
  name: 'post-request',
  data() {
    return {
      debug: 'HEY',
      menuAM: null,
      menuPM: null,
    };
  },
  computed: mapState({
    menuWeekendBreakfast: 'menuWeekendBreakfast',
    menuWeekdayBreakfast: 'menuWeekdayBreakfast',
    menuMain: 'menuMain',
    menuDrinks: 'menuDrinks',
    happyHour: 'happyHour',
    menu: 'menu',
  }),

  created() {
    this.$store.dispatch('loadMenuWeekdayBreakfast');
    this.$store.dispatch('loadMenuWeekendBreakfast');
    this.$store.dispatch('loadMenuMain');
    this.$store.dispatch('loadMenuDrinks');
    this.$store.dispatch('loadHappyHour');
    this.$store.dispatch('buildMenu');
  },
  components: {
  },
};
</script>

<style>
.box {
  border: 0.1px solid #343434;
  width: 100%;

}
.header {
  font-size: 3.5vh;
  padding-top: 0.3em;
  color:#dc3fb9;
}
.menu-times {
  font-size: 2.5vh;
}
.plus {
  font-size: 4vh;
}
.menu-info {
  max-width: 90%;
  margin: 0 auto;
}
.item {
  font-size: 3vh;
  color: #00dbdb;
}
.price {
  color: whitesmoke;
  font-size: 2vh;
}
.description {
  color: grey;
  padding-top: 4pt;
  font-size: 2.5vh;
}
li {
  padding-top: 10pt;
  list-style-type: none;
}

.menu {
  position: relative;
  height: 100%;
  padding-top: 60pt;
}

.fill-black {
  background-color:rgba(0,0,0,.9);
  height: 100vh;
  width: 100%;
  position: fixed;
  z-index: 0;
}
.header-bg {
  background-color: black;
  position: sticky;
  top: 60pt;
}
@media (max-width: 990px) {
  .header-bg{
    top: 40pt;
  }
  .menu{
    padding-top: 40pt;
    }
  }

</style>
