<script setup>
import { watch, ref, onMounted } from 'vue'
import { color } from '@/themer';

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
