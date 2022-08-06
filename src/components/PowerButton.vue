<template>
    <div class="power-button">
        <div id="button-container" @click="disabled ? '' : apply()">
            <img
                id="power-button-icon"
                :class="{ type }"
                :src="require('../assets/images/' + type + '.svg')"
            />
        </div>
    </div>
</template>

<script>
import { settings, save } from '@/settings';

export default {
    name: 'l-power-button',
    props: ['type', 'disabled'],
    methods: {
        apply() {
            if (this.type === 'back') {
                save();
                this.$router.back();

                return;
            }

            if (this.type === 'settings') {
                this.$router.push('/setup');
                return;
            }

            if (this.type === 'theming') {
                this.$router.push('/theming');
                return;
            }

            const action = lightdm[this.type];
            if (settings.disablePowerTexts) {
                action();
                return;
            }

            setTimeout(action, 1500);
            this.$router.push(`/intro/${this.type}`);
        },
    },
    data() {
        return {
            types: [
                'shutdown',
                'hibernate',
                'suspend',
                'restart',
                'settings',
                'back',
            ],
        };
    },
};
</script>

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
