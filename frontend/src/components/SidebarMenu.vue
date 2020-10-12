<template>
  <div>
    <b-button v-b-toggle.sidebar-variant>Toggle Sidebar</b-button>
    <b-sidebar id="sidebar-variant" bg-variant="dark" text-variant="light">
      <ul class="nav flex-column">
          <b-nav-item href="#">Breakfast</b-nav-item>
          <b-nav-item href="#">Brunch</b-nav-item>
          <b-nav-item href="#">Main (Takeout)</b-nav-item>
          <b-nav-item href="#">Drinks</b-nav-item>
      </ul>
    </b-sidebar>
  </div>
</template>
