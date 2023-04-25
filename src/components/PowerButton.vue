<script setup>
import { useRouter } from 'vue-router'
import { settings } from '@/settings';

const router = useRouter();

// const types = ['shutdown', 'hibernate', 'suspend', 'restart', 'settings', 'back']
const props = defineProps(['type', 'disabled']);

function apply() {
    if (props.type === 'back') {
        router.back();
        return;
    }

    if (props.type === 'settings') {
        router.push('/setup');
        return;
    }

    if (props.type === 'theming') {
        router.push('/theming');
        return;
    }

    // const action = lightdm[props.type]; // this cause error: invalid instance type in method
    if (settings.disablePowerTexts) {
        lightdm[props.type]();
        return;
    }
    setTimeout(() => lightdm[props.type](), 1500);

    router.push(`/intro/${props.type}`)
}

function getImageUrl(name) {
    return new URL(`../assets/images/${name}`, import.meta.url).href
}

</script>

<template>
    <div class="power-button">
        <div id="button-container" @click="disabled ? '' : apply()">
            <img id="power-button-icon" :class="{ type }" :src="getImageUrl(`${type}.svg`)" />
        </div>
    </div>
</template>

<style lang="scss" scoped>
@import '../theme';

#button-container {
    transition: background 125ms ease-in-out;
    border-radius: 6px;
    line-height: 1;
}

#button-container:hover {
    background: rgba(255, 255, 255, 0.08);
    cursor: pointer;
}

#power-button-icon {
    box-sizing: initial;

    padding: 10px 10px 10px;

    width: 42px;
    height: 42px;
}
</style>
