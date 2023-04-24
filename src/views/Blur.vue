<script setup>
import LPowerButton from '@/components/PowerButton.vue';
import LRadio from '@/components/Radio.vue';

import { settings, save } from '@/settings';
import { trans } from '@/translations';

const texts = {
  title: trans('blur'),
  fixed: trans('fixedBlur'),
  absolute: trans('absoluteBlur'),
  static: trans('staticBlur'),
  disabled: trans('disabledBlur'),
  help: trans('blurHelp').replace('\n', '<br/>')
}

</script>

<template>
  <div id="blur-view">
    <h1 id="blur-title" v-italic>{{ texts.title }}</h1>

    <div id="blur-content">
      <div class="radio-line">
        <LRadio v-model="settings.blur" value-key="fixed" /><label>{{ texts.fixed }}</label>
      </div>
      <div class="radio-line">
        <LRadio v-model="settings.blur" value-key="absolute" /><label>{{ texts.absolute }}</label>
      </div>
      <div class="radio-line">
        <LRadio v-model="settings.blur" value-key="static" /><label>{{ texts.static }}</label>
      </div>
      <div class="radio-line">
        <LRadio v-model="settings.blur" value-key="disabled" /><label>{{ texts.disabled }}</label>
      </div>

      <p id="blur-help" v-html="texts.help" />
    </div>

    <div @click="save()">
      <LPowerButton id="back" type="back" />
    </div>
  </div>
</template>

<style lang="scss">
@import "../theme";

#blur-view {
  font-family: 'Lato', 'Noto Sans', sans-serif;
  font-weight: 300;

  color: $outer-foreground;

  display: flex;
  flex-direction: column;
  justify-content: space-between;
  align-items: center;
}

#blur-title {
  font-size: 72px;
  font-weight: 300;
  margin-top: 7vh;
}

#blur-content {
  margin-bottom: 100px;

  font-size: 24px;
  font-style: italic;

  text-align: left;
}

.radio-line {
  margin-bottom: 15px;

  label {
    overflow: hidden;
    display: inline-block;

    margin-left: 15px;
    vertical-align: 2px;
  }
}

#blur-help {
  margin-top: 50px;
  text-align: center;
}
</style>
