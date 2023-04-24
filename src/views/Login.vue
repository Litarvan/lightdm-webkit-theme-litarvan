<script setup>
import LPowerButton from '@/components/PowerButton.vue';
import LClock from '@/components/Clock.vue';
import LSelectItem from '@/components/SelectItem.vue';
import LAdditions from '@/components/Additions.vue';

import { ref, onMounted, onBeforeUnmount } from 'vue'
import { useRouter } from 'vue-router'
import { avatar, settings } from '@/settings';
import { trans } from '@/translations';

const router = useRouter()
const props = defineProps(['immutable', 'compact', 'preview'])

const canHibernate = lightdm.can_hibernate
const canSuspend = lightdm.can_suspend
const passwordLabel = trans('password')
const isCompact = props.immutable ? props.compact : settings.mode === 'compact'
const powerList = ref(false)
const logging = ref(false)
const error = ref(false)
const info = ref('')
const message = ref('')
const loginInSession = ref(false)
const password = ref('')

function keyup(event) {
  if (event.getModifierState("CapsLock")) {
    info.value = trans('capsLock');
  } else {
    info.value = '';
  }
}

function begin() {
  loginInSession.value = true;
  lightdm_begin_login(settings.user.username, () => {
    setTimeout(() => lightdm_start(settings.desktop.key), 400);
    router.push(settings.disableFade ? '/base' : '/intro/login');
  }, () => {
    error.value = true;
    password.value = '';
    logging.value = false;
    begin();
  }, (msg) => {
    error.value = true;
    password.value = '';
    logging.value = false;
    // If we receive a message then the login session has already failed
    // so wait for the user to submit another password before starting
    // a new session to avoid an infinite loop
    cancel();
    if (message.value === '') {
      message.value = msg;
    } else {
      message.value = `${message.value} ${msg}`;
    }
  });
}

function cancel() {
  loginInSession.value = false;
  lightdm_cancel_login();
}

function submit() {
  logging.value = true;
  error.value = false;
  message.value = '';

  // Workaround for a form submit bug reloading the route
  setTimeout(() => {
    console.log('lightdm_login')
    lightdm_login(settings.user.username, password.value, !loginInSession.value);
    console.log('login????')
  }, 150);
}
onMounted(() => {
  window.addEventListener('keyup', keyup);

  if (!props.preview) {
    cancel(); // cancel any old sessions
    begin(); // begin a new login session to get any messages
  }

  setTimeout(() => {
    let p = document.querySelector('#password');
    p && p.focus();
  }, 650);
})
onBeforeUnmount(() => {
  window.removeEventListener('keyup', keyup);
})
</script>

<template>
  <div class="login" :class="{ 'compact': isCompact }">
    <div id="top-container" v-if="isCompact">
      <LClock :small="true" />
      <LAdditions :small="true" :preview="preview" />
    </div>

    <div id="login-content" :class="{ 'no-avatar': settings.disableAvatar }">
      <div id="avatar" v-if="!settings.disableAvatar">
        <img id="avatar-image" :class="{ 'round': settings.roundAvatar }" :src="avatar(settings.user.image)" />
      </div>

      <div id="login-form">
        <LSelectItem mode="user" :item="settings.user" @select="!immutable && router.push('/base/select/user')"
          :noicon="true" />

        <form v-if="!immutable" @submit.prevent="submit">
          <input id="password" type="password" v-model="password" :placeholder="passwordLabel" :readonly="logging"
            :class="{ 'error': error }" v-theming="['border-bottom-color']" v-italic.custom />
        </form>
        <div v-else id="password" class="immutable"></div>
        <div id="info" v-italic>
          {{ info }}
        </div>

        <div v-if="!isCompact" class="error-msg">
          {{ message }}
        </div>

        <LSelectItem mode="desktop" :item="settings.desktop"
          @select="!immutable && $router.push('/base/select/desktop')" />
      </div>
      <div v-if="isCompact" class="error-msg">
        {{ message }}
      </div>
    </div>

    <div v-if="!immutable">
      <LPowerButton id="settings" type="settings"></LPowerButton>

      <transition name="power-fade">
        <div id="power-list" v-if="powerList">
          <LPowerButton v-if="canHibernate" id="hibernate" type="hibernate"></LPowerButton>
          <LPowerButton v-if="canSuspend" id="suspend" type="suspend"></LPowerButton>
          <LPowerButton id="reboot" type="restart"></LPowerButton>
        </div>
      </transition>

      <div @click="powerList = !powerList">
        <LPowerButton id="shutdown" type="shutdown" :disabled="!powerList"></LPowerButton>
      </div>
    </div>
  </div>
</template>

<!-- <script> -->
<!--     import LPowerButton from '@/components/PowerButton.vue'; -->
<!--     import LClock from '@/components/Clock.vue'; -->
<!--     import LSelectItem from '@/components/SelectItem.vue'; -->
<!--     import LAdditions from '@/components/Additions.vue'; -->
<!---->
<!--     import { avatar, settings } from '@/settings'; -->
<!--     import { trans } from '@/translations'; -->
<!---->
<!--     export default { -->
<!--         name: 'l-login', -->
<!--         components: { LSelectItem, LPowerButton, LClock, LAdditions }, -->
<!--         props: ['immutable', 'compact', 'preview'], -->
<!---->
<!--         data() { -->
<!--             return { -->
<!--                 canHibernate: lightdm.can_hibernate, -->
<!--                 canSuspend: lightdm.can_suspend, -->
<!--                 passwordLabel: trans('password'), -->
<!--                 isCompact: this.immutable ? this.compact : settings.mode === 'compact', -->
<!--                 settings, -->
<!--                 powerList: false, -->
<!--                 logging: false, -->
<!--                 error: false, -->
<!--                 info: '', -->
<!--                 message: '', -->
<!--                 loginInSession: false, -->
<!---->
<!--                 password: '' -->
<!--             } -->
<!--         }, -->
<!--         mounted() { -->
<!--             window.addEventListener('keyup', this.keyup); -->
<!--              -->
<!--             if (!this.preview) { -->
<!--                 this.cancel(); // cancel any old sessions -->
<!--                 this.begin(); // begin a new login session to get any messages -->
<!--             } -->
<!---->
<!--             setTimeout(() => { -->
<!--                 let p = document.querySelector('#password'); -->
<!--                 p && p.focus(); -->
<!--             }, 650); -->
<!--         }, -->
<!--         beforeDestroy() { -->
<!--             window.removeEventListener('keyup', this.keyup); -->
<!--         }, -->
<!--         methods: { -->
<!--             avatar, -->
<!--             keyup(event) { -->
<!--                 if (event.getModifierState("CapsLock")) { -->
<!--                     this.info = trans('capsLock'); -->
<!--                 } else { -->
<!--                     this.info = ''; -->
<!--                 } -->
<!--             }, -->
<!--             begin() { -->
<!--                 this.loginInSession = true; -->
<!--                 lightdm_begin_login(this.settings.user.username, () => { -->
<!--                     setTimeout(() => lightdm_start(this.settings.desktop.key), 400); -->
<!--                     this.$router.push(settings.disableFade ? '/base' : '/intro/login'); -->
<!--                 }, () => { -->
<!--                     this.error = true; -->
<!--                     this.password = ''; -->
<!--                     this.logging = false; -->
<!--                     this.begin(); -->
<!--                 }, (msg) => { -->
<!--                     this.error = true; -->
<!--                     this.password = ''; -->
<!--                     this.logging = false; -->
<!--                     // If we receive a message then the login session has already failed -->
<!--                     // so wait for the user to submit another password before starting -->
<!--                     // a new session to avoid an infinite loop -->
<!--                     this.cancel(); -->
<!--                     if (this.message === '') { -->
<!--                         this.message = msg; -->
<!--                     } else { -->
<!--                         this.message = `${this.message} ${msg}`; -->
<!--                     } -->
<!--                 }); -->
<!--             }, -->
<!--             cancel() { -->
<!--                 this.loginInSession = false; -->
<!--                 lightdm_cancel_login();  -->
<!--             }, -->
<!--             submit() { -->
<!--                 this.logging = true; -->
<!--                 this.error = false; -->
<!--                 this.message = ''; -->
<!---->
<!--                 // Workaround for a form submit bug reloading the route -->
<!--                 setTimeout(() => { -->
<!--                     lightdm_login(this.settings.user.username, this.password, !this.loginInSession); -->
<!--                 }, 150); -->
<!--             } -->
<!--         } -->
<!--     } -->
<!-- </script> -->

<style lang="scss" scoped>
@import '../theme';

.login.compact {
  .clock {
    margin-top: 6vh;
  }

  #avatar,
  #login-form {
    display: inline-block;
  }

  #avatar {
    margin-top: 0;
  }

  #login-form {
    text-align: left;
    margin-left: 42px;
    margin-top: 31px;
  }

  .item.user {
    margin-bottom: 0;
  }

  #login-content {
    margin-top: 10.5vh;
  }

  @media (min-height: 900px) {
    #login-content {
      margin-top: 14.25vh;
    }
  }

  #login-content.no-avatar {
    .item.user {
      margin-bottom: 2.0vh;
    }

    .item.desktop {
      margin-top: 4vh;
    }

    #login-form {
      margin-left: 0;
      text-align: center;
    }
  }

  .item.user {
    margin-top: 0;
  }

  #password {
    margin-top: 2.5vh;
  }

  #info {
    font-size: 17px;
    height: 26px;
    margin-top: 5px;
  }

  .error-msg {
    font-size: 17px;
    height: 26px;
    margin-top: 5px;
  }

  .item.desktop {
    margin-top: 0;
  }
}

#top-container {
  display: flex;
  flex-direction: column;
}

.item.user {
  margin-bottom: 13px;
}

#login-content {
  margin-top: 11.5vh;
}

@media (min-height: 850px) {
  #login-content {
    margin-top: 14vh;
  }
}

#login-content.no-avatar {
  margin-top: calc(50vh - 165px);

  .item.user {
    margin-top: 0;
  }

  .item.desktop {
    margin-top: calc(5.5vh - 46px);
  }
}

#avatar-image {
  height: 200px;
}

.round {
  border-radius: 100px;
}

.item.user {
  margin-top: 3.5vh;
}

#password {
  font-weight: 300;
}

#password,
#password:focus {
  outline: none;
}

#password::placeholder {
  color: rgba($secondary-color, 0.55);
  opacity: 1;
}

#password.italic::placeholder {
  font-style: italic;
}

#password {
  margin-top: 4.5vh;

  font-family: 'Lato', 'Noto Sans', sans-serif;

  background: $password-field-background;
  caret-color: $password-field-caret;
  color: $secondary-color;

  padding-left: 15px;
  padding-right: 15px;
  font-size: 24px;

  width: 400px;
  height: 54px;

  border: none;
  border-bottom: solid 3px;
  border-top-left-radius: 4px;
  border-top-right-radius: 4px;
}

#password.error {
  border-bottom-color: $error-color !important;
}

#password.immutable {
  display: inline-block;
  background: $password-field-background-setup;
  border-bottom-width: 6px;
}

#info {
  color: rgba(255, 255, 255, 0.875);

  font-family: 'Lato', 'Noto Sans', sans-serif;
  font-size: 22px;
  font-weight: 300;

  text-align: center;

  margin-top: 15px;
  height: 31px;
}

.error-msg {
  color: $error-color;

  font-family: 'Lato', 'Noto Sans', sans-serif;
  font-size: 22px;

  text-align: center;

  margin-top: 15px;
  height: 31px;
}

.item.desktop {
  margin-top: calc(6vh - 46px);
  display: inline-block;
}

.item.user {
  display: inline-block;
}

#settings {
  position: absolute;
  bottom: 20px;
  left: 20px;
}

#hibernate {
  position: absolute;
  bottom: 245px;
  right: 20px;
}

#suspend {
  position: absolute;
  bottom: 170px;
  right: 20px;
}

#reboot {
  position: absolute;
  bottom: 95px;
  right: 20px;
}

#shutdown {
  position: absolute;
  bottom: 20px;
  right: 20px;
}

@media (max-height: 850px) {
  #password {
    height: 49px;
    font-size: 22px;
  }
}

.power-fade-enter-active {
  transition: all .3s ease;
}

.power-fade-enter {
  opacity: 0;
}
</style>
