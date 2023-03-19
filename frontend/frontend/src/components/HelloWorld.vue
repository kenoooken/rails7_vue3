<script lang="ts">
export default {
  name: "HelloWorld",
  data() {
    return {
      message: "",
    };
  },
  async created() {
    const response = await fetch("http://localhost:3000/api/v1/");
    const data = await response.json();
    this.message = data.message;
  },
};
</script>

<template>
  <div class="hello">
    <h1>{{ message }}</h1>
  </div>
</template>

<style scoped>
.read-the-docs {
  color: #888;
}
</style>
