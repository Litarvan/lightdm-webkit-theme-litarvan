<script setup>
import { ref, reactive, onMounted, onBeforeUnmount } from 'vue'

import { getLocale } from '@/translations';
import { settings } from '@/settings';

const props = defineProps(['small'])

const datetime = reactive({
  hours: '00',
  minutes: '00',
  date: '',
  part: '',
});

const interval = ref(0)

function setTime() {
  const newdate = new Date();

  datetime.hours = newdate.getHours();
  datetime.minutes = newdate.getMinutes();

  if (settings.clock12) {
    datetime.part = datetime.hours >= 12 ? 'PM' : 'AM';
    datetime.hours = datetime.hours === 12 || datetime.hours === 0 ? 12 : datetime.hours % 12;
  } else {
    datetime.part = ''
  }

  let strs = newdate.toLocaleDateString(getLocale(), {
    weekday: 'long',
    day: 'numeric',
    month: 'long',
    year: 'numeric'
  }).split(' ');

  // Capitalize date
  let result = '';
  strs.forEach(s => result += s.charAt(0).toUpperCase() + s.substring(1) + ' ');

  datetime.date = result.substring(0, result.length - 1);
}

function pad(v) {
  return v.toString().padStart(2, '0')
}

onMounted(() => {
  setTime();
  interval.value = setInterval(setTime, 1000);
})

onBeforeUnmount(() => {
  clearInterval(interval.value);
})
</script>

<template>
  <div class="clock" :class="{ 'small': small }">
    <span id="hours">{{ datetime.part !== '' ? datetime.hours : pad(datetime.hours) }}</span>:{{ pad(datetime.minutes)
    }}<span id="part">{{ datetime.part }}</span>

    <div id="date">
      {{ datetime.date }}
    </div>
  </div>
</template>

<!-- <script> -->
<!--     import { getLocale } from '@/translations'; -->
<!--     import { settings } from '@/settings'; -->
<!---->
<!--     export default { -->
<!--         name: 'l-clock', -->
<!--         props: ['small'], -->
<!---->
<!--         mounted() { -->
<!--             this.setTime(); -->
<!--             this.interval = setInterval(this.setTime, 1000); -->
<!--         }, -->
<!---->
<!--         filters: { -->
<!--             pad: v => v.toString().padStart(2, '0') -->
<!--         }, -->
<!---->
<!--         methods: { -->
<!--             setTime() { -->
<!--                 const date = new Date(); -->
<!---->
<!--                 this.hours = date.getHours(); -->
<!--                 this.minutes = date.getMinutes(); -->
<!---->
<!--                 if (settings.clock12) { -->
<!--                     this.part = this.hours >= 12 ? 'PM' : 'AM'; -->
<!--                     this.hours = this.hours === 12 || this.hours === 0 ? 12 : this.hours % 12; -->
<!--                 } -->
<!---->
<!--                 let strs = date.toLocaleDateString(getLocale(), { -->
<!--                     weekday: 'long', -->
<!--                     day: 'numeric', -->
<!--                     month: 'long', -->
<!--                     year: 'numeric' -->
<!--                 }).split(' '); -->
<!---->
<!--                 // Capitalize date -->
<!--                 let result = ''; -->
<!--                 strs.forEach(s => result += s.charAt(0).toUpperCase() + s.substring(1) + ' '); -->
<!---->
<!--                 this.date = result.substring(0, result.length - 1); -->
<!--             } -->
<!--         }, -->
<!---->
<!--         data() { -->
<!--             return { -->
<!--                 hours: '00', -->
<!--                 minutes: '00', -->
<!--                 date: '', -->
<!--                 part: '' -->
<!--             }; -->
<!--         }, -->
<!---->
<!--         beforeDestroy() { -->
<!--             clearInterval(this.interval); -->
<!--         } -->
<!--     } -->
<!-- </script> -->

<style lang="scss" scoped>
.clock {
  font-size: 164px;
  font-weight: 300;
  font-family: 'Lato', 'Noto Sans', sans-serif;
  line-height: 1.1;

  text-align: center;
  cursor: default;
}

.clock.small {
  font-size: 138px;

  #date {
    font-size: 24px;
    margin-top: 1.8vh;
  }
}

#hours {
  font-weight: normal;
  /*font-weight: bold;
        font-size: 156px;*/
}

#part {
  font-size: 18px;
  font-weight: normal;
}

#date {
  font-weight: normal;
  margin-top: 2.25vh;
  font-size: 28px;
  cursor: default;
}
</style>
