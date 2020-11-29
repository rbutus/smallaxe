<template>
  <div>
    <div class="fill-black"></div>
    <div class="menu">
      <div v-for="(menu, i1) in menus" v-bind:key="'menu_' + i1">
        <div class="box" v-b-toggle="'collapse-' + i1">
            <div class="header-bg">
              <div class="header" v-html="menu.title"></div>
              <div class="menu-times" v-html="menu.hours"></div>
              <div class="plus">+</div>
            </div>
            <b-collapse :id="'collapse-' + i1">
              <div v-for="(cat, i2) in menu.categories" v-bind:key="'cat_' + i2">
                <div v-if="cat !== 'none'">
                <div class="categories" v-html="cat"></div>
                </div>
                <li v-for="(item, i3) in menu.menuItems" v-bind:key="'item_' + i3">
                  <div v-if="item.menu_cat[0].name === cat">
                    <div class="menu-info-container">
                    <div class="menu-info">
                        <div class="item" v-html="item.name"></div>
                        <div class="price" v-html="item.price"></div>
                        <div class="description" v-html="item.description"></div>
                    </div>
                    </div>
                  </div>
                </li>
                <div class="dots">...</div>
              </div>
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
  font-size: 1.5em;
  padding-top: 0.3em;
  color:#dc3fb9;
}
.menu-times {
  font-size: 1em;
}
.plus {
  font-size: 1.5em;
}
.menu-info {
  max-width: 90%;
  margin: 0 auto;
  padding-bottom: 3pt;
}
.menu-info-container {
  padding-bottom: 1em;

}
.item {
  font-size: 1.3em;
  color: black;
  padding-top: 0em;;
}
.price {
  color:darkslateblue;
  font-size: 1.3em;
}
.description {
  color: #555555;
  padding-top: 2pt;
  font-size: 1.2em;
  max-width: 40em;
  margin: 0 auto;
}
.menu-items {
  padding-top: 5pt;
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
.categories {
  background-color:cornflowerblue;
  color: black;
  font-size: 1.5em;
  padding: 0.2em;
  /* z-index: 0; */
}
.sticky {
  position: -webkit-sticky;
  position: sticky;
  top: 20em;
  z-index: 1;
}
.header-bg {
  background-color: #1c122c;
  position: sticky;
  top: 53pt;
  z-index: 2;
  height: 7.5em;
}
.front {
  z-index: 5;
}
.dots {
  font-size: 1.7em;
  color: black;
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
