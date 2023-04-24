<script setup>
import { reactive, watch, onMounted, onBeforeUnmount } from 'vue'

const props = defineProps(['small', 'preview'])

const battery = reactive({
  icon: 'battery_1',
  value: 15,
  isCharging: false,
  canAccess: lightdm?.can_access_battery ?? false
})

const brightness = reactive({
  icon: 'brightness_high',
  value: 85,
  canAccess: lightdm?.can_access_brightness ?? false,
  showSlider: false,
})

watch(() => brightness.value, (val, oldValue) => {
  if (val == oldValue)
    return;
  lightdm.brightness = val;
})

function on_battery_update() {
  const batteryData = lightdm?.battery_data ?? null;
  if (batteryData == null) {
    battery.canAccess = false;
    return;
  }

  const level = batteryData.level ?? 0;
  const acStatus = batteryData.ac_status ?? false;

  if (level < 10) {
    battery.icon = "battery_0";
  } else if (level < 25) {
    battery.icon = "battery_1";
  } else if (level < 40) {
    battery.icon = "battery_2";
  } else if (level < 55) {
    battery.icon = "battery_3";
  } else if (level < 70) {
    battery.icon = "battery_4";
  } else if (level < 85) {
    battery.icon = "battery_5";
  } else if (level < 98) {
    battery.icon = "battery_6";
  } else {
    battery.icon = "battery_full";
  }
  battery.value = level;
  battery.isCharging = acStatus;
}

function on_brightness_update() {
  const bright = lightdm?.brightness ?? null;
  if (bright == null) {
    brightness.canAccess = false;
    return;
  }

  if (bright < 33) {
    brightness.icon = "brightness_low";
  } else if (bright < 66) {
    brightness.icon = "brightness_medium";
  } else {
    brightness.icon = "brightness_high";
  }

  brightness.value = bright;
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
    <div id="battery-container" class="addition-container" v-if="battery.canAccess">
      <img id="battery-icon" class="addition-icon" :src="getImageUrl(`../assets/images/battery/${battery.icon}.svg`)" />
      <img id="battery-charging-icon" class="addition-icon" :src="getImageUrl('../assets/images/battery/bolt.svg')"
        v-if="battery.isCharging" />
      <span id="battery-value">
        {{ battery.value }}%
      </span>
    </div>

    <div id="brightness-container" class="addition-container" v-if="brightness.canAccess"
      @mouseover="brightness.showSlider = !preview ? true : false" @mouseleave="brightness.showSlider = false">
      <img id="brightness-icon" class="addition-icon"
        :src="getImageUrl(`../assets/images/brightness/${brightness.icon}.svg`)" />
      <transition name="expand">
        <input id="brightness-slider" type="range" min="0" max="100" v-model="brightness.value"
          v-show="brightness.showSlider" />
      </transition>
      <span id="brightness-value">
        {{ brightness.value }}%
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
