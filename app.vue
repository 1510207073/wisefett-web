<template>
  <div>
    <NuxtPage />
  </div>
</template>

<script setup>
// App.vue is now just a layout shell
// No script logic needed here for the main page content
</script>

<style>
/* Global styles can remain here or be moved to assets/css */
/* For simplicity, let's assume global styles are mainly in assets/css/main.css */
/* Basic body styling might still be useful here if no other layout sets it */
body {
  margin: 0;
  font-family: sans-serif; /* Basic default */
  /* You might want to retain some base styling from the original app.vue */
  background-color: #121212; /* Example: Keep dark background */
  color: #ffffff; /* Example: Keep light text */
  /* Remove overflow: hidden to allow scrolling on child pages */
  /* overflow: hidden; */ 
}
</style>

