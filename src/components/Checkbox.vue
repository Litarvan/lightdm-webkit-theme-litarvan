<script setup>
import { ref, onMounted, watch } from 'vue'
import { color } from '@/themer';

const props = defineProps(['modelValue'])
const emit = defineEmits(['update:modelValue'])
const box = ref(null)

function updateStyle(checked, color) {
  const style = box.value.style;
  const col = checked ? color : null;

  style['border-color'] = col;
  style['background'] = col;
}

function update() {
  emit('update:modelValue', !props.modelValue);
}

// when color or checkbox value changes, update style
watch([() => props.modelValue, color], ([val, cval]) => updateStyle(val, cval))

onMounted(() => {
  updateStyle(props.modelValue, color.value)
})

</script>

<template>
  <div class="checkbox" @click="update" ref="box">
  </div>
</template>

<style lang="scss">
.checkbox {
  border: solid 2px;
  border-radius: 2px;

  transition: border-color 150ms ease-in-out, background 125ms ease-in-out;

  width: 22px;
  height: 22px;

  display: inline-block;
}

.checkbox:hover {
  cursor: pointer;
}
</style>
