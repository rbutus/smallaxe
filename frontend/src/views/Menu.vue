<template>
  <div>
    <div class="fill-black"></div>
    <div class="menu">
      <div v-for="(menu, i) in menus" v-bind:key="'range_' + i">
        <div class="box" v-b-toggle="'collapse-' + i">
            <div class="header-bg">
              <div class="header" v-html="menu.title"></div>
              <div class="menu-times" v-html="menu.hours"></div>
              <div class="plus">+</div>
            </div>
            <b-collapse :id="'collapse-' + i">
              <li v-for="(item, i) in menu.menuItems" v-bind:key="'me_' + i">
                <div class="menu-info">
                  <div class="item" v-html="item.name"></div>
                  <div class="price" v-html="item.price"></div>
                  <div class="description" v-html="item.description"></div>
                </div>
              </li>
            </b-collapse>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { mapState } from 'vuex';

export default {
  name: 'menu-request',
  computed: mapState({
    menus: 'menus',
  }),

  created() {
    this.$store.dispatch('loadMenus');
  },
};
</script>

<style>
.box {
  border: 0.1px solid #343434;
  width: 100%;
  padding-bottom: 1pt;
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
  color: black;
  padding-top: 1em;
}
.price {
  color:darkslateblue;
  font-size: 2vh;
}
.description {
  color: #555555;
  padding-top: 4pt;
  font-size: 2.5vh;
}
.menu-items {
  padding-top: 10pt;
  list-style-type: none;
}

.menu {
  position: relative;
  height: 100%;
  padding-top: 53pt;
}

.fill-black {
  background-color:#00dbdb;
  padding-top: 10pt;
  height: 100vh;
  width: 100%;
  position: fixed;
  z-index: 0;
}
.header-bg {
  background-color: black;
  position: sticky;
  top: 53pt;
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
