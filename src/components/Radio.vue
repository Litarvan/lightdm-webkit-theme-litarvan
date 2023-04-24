<script setup>
import { watch, ref, onMounted } from 'vue'
import { color } from '@/themer.js';

const props = defineProps(['modelValue', 'valueKey'])
const emit = defineEmits(['update:modelValue'])
const box = ref(null);

function updateStyle(value) {
  const style = box.value.style;
  const col = value === props.valueKey ? color.value : null;

  style['border-color'] = col;
  style['background'] = col;
}

watch(() => props.modelValue, updateStyle)

function select() {
  emit('update:modelValue', props.valueKey)
}

onMounted(() => {
  updateStyle(props.modelValue)
})
</script>

<template>
  <div class="radio" @click="select" ref="box">
  </div>
</template>

<!-- <script> -->
<!--     import { color } from '@/themer'; -->
<!---->
<!--     export default { -->
<!--         name: 'l-radio', -->
<!--         props: ['value', 'valueKey'], -->
<!---->
<!--         mounted() { -->
<!--             this.updateStyle(); -->
<!--         }, -->
<!---->
<!--         computed: { -->
<!--             checked() { -->
<!--                 return this.value === this.valueKey -->
<!--             } -->
<!--         }, -->
<!--         watch: { -->
<!--             checked() { -->
<!--                 this.updateStyle(); -->
<!--             } -->
<!--         }, -->
<!--         methods: { -->
<!--             select() { -->
<!--                 this.$emit('input', this.valueKey); -->
<!--             }, -->
<!--             updateStyle() { -->
<!--                 const style = this.$refs.box.style; -->
<!--                 const col = this.checked ? color : null; -->
<!---->
<!--                 style['border-color'] = col; -->
<!--                 style['background'] = col; -->
<!--             } -->
<!--         } -->
<!--     } -->
<!-- </script> -->

<style lang="scss">
.radio {
  border: solid 2px;
  border-radius: 50%;

  transition: border-color 150ms ease-in-out, background 125ms ease-in-out;

  width: 30px;
  height: 30px;

  display: inline-block;
}

.radio:hover {
  cursor: pointer;
}
</style>
