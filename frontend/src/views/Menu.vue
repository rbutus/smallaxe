<template>
  <div>
    <div class="fill-black"></div>
    <div class="menu">
      <div class="box" v-b-toggle.collapse-happy-hour>
        <div class="header-bg">
          <div class="header">Happy Hour!</div>
          <div>2pm - 5pm daily!</div>
          <div>+</div>
        </div>
        <b-collapse id="collapse-happy-hour">
          <li v-for="(item, i) in happyHour" v-bind:key="'happyHour_' + i">
            <div class="menu-info">
              <div class="item">{{ item.name }}</div>
              <div class="price">{{ item.price}}</div>
              <div class="description" v-html="item.description"></div>
            </div>
          </li>
        </b-collapse>
      </div>
      <div class="box" v-b-toggle.collapse-weekday>
        <div class="header-bg">
          <div class="header">Weekday Breakfast Menu</div>
          <div>8am - 12pm </div>
          <div>+</div>
        </div>
        <b-collapse id="collapse-weekday">
          <li v-for="(item, i) in menuWeekdayBreakfast" v-bind:key="'weekdaymenu_' + i">
            <div class="menu-info">
              <div class="item">{{ item.name }}</div>
              <div class="price">{{ item.price}}</div>
              <div class="description">{{ item.description }}</div>
            </div>
          </li>
        </b-collapse>
      </div>
      <div class="box" v-b-toggle.collapse-weekend>
        <div class="header-bg">
          <div class="header">Weekend Breakfast Menu</div>
          <div>8am - 2pm Sat, Sun</div>
          <div>+</div>
        </div>
        <b-collapse id="collapse-weekend">
          <li v-for="(item, i) in menuWeekendBreakfast" v-bind:key="'weekendmenu_' + i">
            <div class="menu-info">
              <div class="item">{{ item.name }}</div>
              <div class="price">{{ item.price}}</div>
              <div class="description">{{ item.description }}</div>
            </div>
          </li>
        </b-collapse>
      </div>
      <div class="box" v-b-toggle.collapse-main>
        <div class="header-bg">
          <div class="header">Main Menu</div>
          <div>12pm - close weekdays</div>
          <div>2pm - close weekends</div>
          <div>+</div>
        </div>
        <b-collapse id="collapse-main">
          <li v-for="(item, i) in menuMain" v-bind:key="'mainmenu_' + i">
            <div class="menu-info">
              <div class="item">{{ item.name }}</div>
              <div class="price">{{ item.price}}</div>
              <div class="description">{{ item.description }}</div>
            </div>
          </li>
        </b-collapse>
      </div>
      <div class="box" v-b-toggle.collapse-drinks>
        <div class="header-bg">
          <div class="header">Drink Menu</div>
          <div>10am - close</div>
          <div>+</div>
        </div>
        <b-collapse id="collapse-drinks">
          <li v-for="(item, i) in menuDrinks" v-bind:key="'drinksmen_' + i">
            <div class="menu-info">
              <div class="item">{{ item.name }}</div>
              <div class="price">{{ item.price}}</div>
              <div class="description">{{ item.description }}</div>
            </div>
          </li>
        </b-collapse>
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
      menuAM: null,
      menuPM: null,
    };
  },
  computed: mapState([
    'menuWeekendBreakfast',
    'menuWeekdayBreakfast',
    'menuMain',
    'menuDrinks',
    'happyHour',
  ]),

  created() {
    this.$store.dispatch('loadMenuWeekdayBreakfast');
    this.$store.dispatch('loadMenuWeekendBreakfast');
    this.$store.dispatch('loadMenuMain');
    this.$store.dispatch('loadMenuDrinks');
    this.$store.dispatch('loadHappyHour');
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
  font-size: 4vh;
  padding-top: 0.3em;
  color:#dc3fb9
}
.menu-info {
  max-width: 90%;
  margin: 0 auto;
}
.item {
  font-size: 3.5vh;
  color: #00dbdb;
}
.price {
  padding-left: 15pt;
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
  padding-top: 60pt;
  position: relative;
  height: 100%;
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
}

</style>
