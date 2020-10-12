<template>
<div class="navbarr">
  <b-navbar toggleable="sm" type="dark" variant="dark">

    <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>

    <b-collapse id="nav-collapse" is-nav>
      <b-navbar-nav>
        <b-nav-item href="/">HOME</b-nav-item>
    <!-- <b-nav-item href="calendar">CALENDAR</b-nav-item> -->
        <b-nav-item-dropdown text="MENU">
          <div class=dropsize>
            <b-dropdown-item>Breakfast</b-dropdown-item>
            <b-dropdown-item>Brunch</b-dropdown-item>
            <b-dropdown-item>Main/Takeout</b-dropdown-item>
            <b-dropdown-item>Drinks</b-dropdown-item>
          </div>
        </b-nav-item-dropdown>
        <b-nav-item href="#">SPECIALS</b-nav-item>
        <b-nav-item href="covid">COVID-19</b-nav-item>
        <b-nav-item href="gallery">GALLERY</b-nav-item>
      </b-navbar-nav>

      <!-- Right aligned nav items -->
      <b-navbar-nav class="ml-auto">
      </b-navbar-nav>
    </b-collapse>
  </b-navbar>
</div>
</template>

<style>

.navbarr {
  position: sticky;
  z-index: 1;
  top: 0;
  font-size: 15pt;
}

.dropsize {
  font-size: 16pt;

}

.dropdown-item > a {
  padding: 0;
}

</style>
