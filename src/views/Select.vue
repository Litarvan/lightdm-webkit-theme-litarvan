<script setup>
import LSelectItem from '@/components/SelectItem.vue';
import { save, settings } from '@/settings.js';
import { useRouter, useRoute } from 'vue-router';

const router = useRouter();
const route = useRoute();

const modes = {
  user: { field: 'users', name: 'display_name', key: 'username' },
  desktop: { field: 'sessions', name: 'name', key: 'key' }
};

const mode = route.params.mode
const type = modes[mode]
const content = lightdm[type.field] || []
const selected = settings[mode] || {}

function select(obj) {
  settings[mode] = obj;
  save();
  router.back();
}
</script>

<template>
  <div id="select">
    <div id="content">
      <LSelectItem v-for="item of content" :key="item[type.key]" :mode="mode" :item="item"
        :selected="item[type.key] === selected[type.key]" @select="select(item)" />
    </div>
  </div>
</template>

<style lang="scss" scoped>
#select {
  display: flex;
  align-items: center;
  justify-content: center;

  font-family: 'Lato', 'Noto Sans', sans-serif;
  font-weight: normal;
  font-size: 44px;

  text-align: left;
}
</style>
