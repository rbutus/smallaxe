<template>
  <div>
    <SidebarMenu/>
    <!-- <div class="container">
      <div class="row">
        <div class="col-sm-6">
          <div id="breakfast" class="menu header">Breakfast Menu</div>
          <li v-for="item in menuAM" v-bind:key="item">
            <div>
              <span class="item">{{ item.item }}</span>
              <span class="price">{{ item.price }}</span>
            </div>
            <div class="description">{{ item.description }}</div>
          </li>
        </div>
        <div class="col-sm-6">
          <div id="main" class="menu header">Main Menu</div>
          <li v-for="item in menuPM" v-bind:key="item">
            <div>
              <span class="item">{{ item.item }}</span>
              <span class="price">{{ item.price }}</span>
            </div>
            <div class="description">{{ item.description }}</div>
          </li>
        </div>
      </div>
    </div> -->

  </div>
</template>

<script>
import axios from 'axios';
import SidebarMenu from '../components/SidebarMenu.vue';

export default {
  name: 'post-request',
  data() {
    return {
      menuAM: null,
      menuPM: null,
    };
  },
  methods: {
    getMenuAM() {
      const path = 'http://localhost:1337/menu-breakfast-items';
      axios.get(path)
        .then((res) => {
          this.menuAM = res.data;
        });
    },
    getMenuPM() {
      const path = 'http://localhost:1337/menu-regular-items';
      axios.get(path)
        .then((res) => {
          this.menuPM = res.data;
        });
    },
  },
  created() {
    this.getMenuAM();
    this.getMenuPM();
  },
  components: {
    SidebarMenu,
  },
};
</script>

<style>

.menu.header {
  font-size: 30pt;
  padding-top: 30pt;
}
.item {
  font-size: 15pt;
}
.price {
  padding-left: 15pt;
}
.description {
  color: grey;
  padding-top: 4pt;
}
li {
  padding-top: 10pt;
}

</style>
