<template>
  <div class="hours-contact">
    <div class="hours">
      <div class="hours-header">HOURS</div>
      <div>Sun, Mon, Tue: 8am - 7pm</div>
      <div>Wed: CLOSED</div>
      <div>Thu: 8am - 9pm</div>
      <div>Fri, Sat: 8am - 10pm</div>
    </div>
    <div>
      <div class="headers contact">Contact</div>
      <div class="phone">250.838.2385</div>
      <div>409 Cliff Ave., Enderby, BC</div>
    </div>
    <div id="contact-id"></div>
    <a href="https://api.smallaxeroadhouse.ca/admin">
      <img class="tacocat" src="../assets/img/tacocat_bw_transparent.png"/>
    </a>
  </div>
</template>

<style>
.hours-contact {
  padding-top: 1em;
  background-color: rgb(0,0,0,0.8);
  color: grey;
  padding-top: 2em;
  height: 100%;
  padding-bottom: 2em;
  font-size: 2vh;
}

#contact-id {
  padding-top: 2em;
}
.contact {
  padding-top: 1em;
}
.hours {
  padding-top: 1em;
  font-size: 2.5vh;
}
.phone {
  font-size: 3vh;
}

.hours-header {
  font-size: 1.5em;
}
.tacocat {
  width: 20pt;
}
</style>
