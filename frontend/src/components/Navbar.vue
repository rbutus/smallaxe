<template>
<div class="navbarr">
  <b-navbar toggleable="lg" type="dark" variant="dark" id="nav1">

    <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>
    <b-collapse id="nav-collapse" is-nav>
      <b-navbar-nav style="width: 100%" justified>
        <b-nav-item href="/">HOME</b-nav-item>
        <b-nav-item href="/#events-id">EVENTS</b-nav-item>
        <b-nav-item href="menu">MENU</b-nav-item>
        <b-nav-item href="covid">COVID-19</b-nav-item>
        <b-nav-item href="gallery">GALLERY</b-nav-item>
        <b-nav-item href="/#contact-id">CONTACT/HOURS</b-nav-item>
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
  position: fixed;
  width: 100%;
  z-index: 5;
  top: 0;
  font-size: 20pt;
}

.dropsize {
  font-size: 16pt;

}

/* .dropdown-item > a {
  padding: 0;
} */

</style>
