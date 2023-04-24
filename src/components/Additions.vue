<script setup>
import { ref, watch, onMounted, onBeforeUnmount } from 'vue'

const props = defineProps(['small', 'preview'])
const batteryIcon = ref('battery_1')
const batteryValue = ref(15)
const batteryIsCharging = ref(false)
const canAccessBattery = ref(lightdm?.can_access_battery ?? false)
const brightnessIcon = ref('brightness_high')
const brightnessValue = ref(85)
const canAccessBrightness = ref(lightdm?.can_access_brightness ?? false)
const showBrightnessSlider = ref(false)

watch(brightnessValue, (val, oldValue) => {
  if (val == oldValue)
    return;
  lightdm.brightness = val;
})

function on_battery_update() {
  const batteryData = lightdm?.battery_data ?? null;
  if (batteryData == null) {
    canAccessBattery.value = false;
    return;
  }

  const level = batteryData.level ?? 0;
  const acStatus = batteryData.ac_status ?? false;

  if (level < 10) {
    batteryIcon.value = "battery_0";
  } else if (level < 25) {
    batteryIcon.value = "battery_1";
  } else if (level < 40) {
    batteryIcon.value = "battery_2";
  } else if (level < 55) {
    batteryIcon.value = "battery_3";
  } else if (level < 70) {
    batteryIcon.value = "battery_4";
  } else if (level < 85) {
    batteryIcon.value = "battery_5";
  } else if (level < 98) {
    batteryIcon.value = "battery_6";
  } else {
    batteryIcon.value = "battery_full";
  }
  batteryValue.value = level;
  batteryIsCharging.value = acStatus;
}

function on_brightness_update() {
  const brightness = lightdm?.brightness ?? null;
  if (brightness == null) {
    canAccessBrightness.value = false;
    return;
  }

  if (brightness < 33) {
    brightnessIcon.value = "brightness_low";
  } else if (brightness < 66) {
    brightnessIcon.value = "brightness_medium";
  } else {
    brightnessIcon.value = "brightness_high";
  }

  brightnessValue.value = brightness;
}

onMounted(() => {
  if (lightdm?.can_access_battery) {
    on_battery_update();
    lightdm?.battery_update.connect(on_battery_update);
  }
  if (lightdm?.can_access_brightness) {
    on_brightness_update();
    lightdm?.brightness_update.connect(on_brightness_update);
  }
});

onBeforeUnmount(() => {
  if (lightdm?.can_access_battery) {
    lightdm?.battery_update.disconnect(on_battery_update);
  }
  if (lightdm?.can_access_brightness) {
    lightdm?.brightness_update.disconnect(on_brightness_update);
  }
});

function getImageUrl(path) {
  return new URL(path, import.meta.url).href
}

</script>

<template>
  <div id="additions" :class="{ 'small': small }">
    <div id="battery-container" class="addition-container" v-if="canAccessBattery">
      <img id="battery-icon" class="addition-icon" :src="getImageUrl(`../assets/images/battery/${batteryIcon}.svg`)" />
      <img id="battery-charging-icon" class="addition-icon" :src="getImageUrl('../assets/images/battery/bolt.svg')"
        v-if="batteryIsCharging" />
      <span id="battery-value">
        {{ batteryValue }}%
      </span>
    </div>

    <div id="brightness-container" class="addition-container" v-if="canAccessBrightness"
      @mouseover="showBrightnessSlider = !preview ? true : false" @mouseleave="showBrightnessSlider = false">
      <img id="brightness-icon" class="addition-icon"
        :src="getImageUrl(`../assets/images/brightness/${brightnessIcon}.svg`)" />
      <transition name="expand">
        <input id="brightness-slider" type="range" min="0" max="100" v-model="brightnessValue"
          v-show="showBrightnessSlider" />
      </transition>
      <span id="brightness-value">
        {{ brightnessValue }}%
      </span>
    </div>
  </div>
</template>

<style lang="scss" scoped>
@import '../theme';

#additions {
  display: flex;
  flex-direction: row;
  font-family: 'Lato', 'Noto Sans', sans-serif;

  justify-self: flex-start;
  align-self: center;
  margin: 3em 0em;
  gap: 1em;
}

.addition-container {
  transition: background 125ms ease-in-out;
  border-radius: 6px;
  width: auto;
  display: flex;
  align-items: center;
  padding: 0.5em;

  &:hover {
    background: rgba(255, 255, 255, 0.08);
  }
}

.addition-icon {
  padding: .4em .2em;
  height: 1.6em;
  width: 1.1em;

  &#brightness-icon {
    width: 1.6em;
    padding: .4em .2em .4em .4em;
  }
}

#battery-value,
#brightness-value {
  padding: .4em;
}

#brightness-slider {
  -webkit-appearance: none;
  width: 12em;
  background: transparent;
}

input[type="range"]::-webkit-slider-thumb {
  -webkit-appearance: none;
  background: var(--primary-color);
  width: 1.2em;
  height: 1.2em;
  border-radius: 100%;
  border-width: 0;
  cursor: pointer;
  margin-top: -0.4em;
}

input[type="range"]::-moz-range-thumb {
  background: var(--primary-color);
  width: 1.2em;
  height: 1.2em;
  border-radius: 100%;
  border-width: 0;
  cursor: pointer;
}

input[type="range"]::-webkit-slider-runnable-track {
  width: 100%;
  height: 0.4em;
  background-color: #ffffff;
  border-radius: 6px;
  cursor: pointer;
}

input[type="range"]::-moz-range-track {
  width: 100%;
  height: 0.4em;
  background-color: #ffffff;
  border-radius: 6px;
  cursor: pointer;
}

.expand-enter-active,
.expand-leave-active {
  transition: .5s;
  max-width: 12em;
}

.expand-enter,
.expand-leave-to {
  max-width: 0;
  opacity: 0;
}

#additions.small {
  margin: 1em 0em;
  gap: 0.5em;

  #battery-value,
  #brightness-value {
    padding: .2em;
  }

  .addition-icon {
    padding: .2em .1em;
    height: 1.2em;
    width: 1em;

    &#brightness-icon {
      width: 1.2em;
      padding: .2em .1em .2em .2em;
    }
  }

  #battery-container,
  #brightness-container {
    padding: 0.1em;
  }

  #brightness-slider {
    width: 6em;
  }

  .expand-enter-active,
  .expand-leave-active {
    transition: .5s;
    max-width: 6em;
  }

  .expand-enter,
  .expand-leave-to {
    max-width: 0;
    opacity: 0;
  }
}
</style>
