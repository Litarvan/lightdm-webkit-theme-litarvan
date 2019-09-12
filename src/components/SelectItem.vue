<template>
    <div class="item" :class="{ 'user': mode === 'user', 'desktop': mode === 'desktop', 'selected': selected }" v-theming="['border-bottom-color']" @click="select()">
        <div class="icon-container" v-if="!noicon">
            <img class="icon" :src="icon()" />
        </div>

        {{ mode === 'user' ? item.display_name : item.name }} <span v-if="mode === 'user'">/ <span class="username">{{ item.username }}</span></span>
    </div>
</template>

<script>
    import { avatar } from '@/settings';

    export default {
        name: 'select-item',
        props: ['mode', 'item', 'selected', 'noicon'],

        methods: {
            select() {
                this.$emit('select');
            },
            icon() {
                if (this.mode === 'user') {
                    return avatar(this.item.image);
                }

                if (this.mode === 'desktop') {
                    let key = this.item.key.toLowerCase();
                    let icon;

                    if (key.indexOf('plasma') > -1 || key.indexOf('kde') > -1) {
                        icon = 'kde';
                    } if (key.indexOf('gnome') > -1) {
                        icon = 'gnome';
                    } if (key.indexOf('xfce') > -1) {
                        icon = 'xfce';
                    } if (key.indexOf('unity') > -1 || key.indexOf('ubuntu') > -1) {
                        icon = 'ubuntu';
                    } if (key.indexOf('dde') > -1 || key.indexOf('deepin') > -1) {
                        icon = 'deepin';
                    } if (key.indexOf('lxde') > -1 || key.indexOf('lxqt') > -1) {
                        icon = 'lxde';
                    } if (key.indexOf('pantheon') > -1 || key.indexOf('elementary') > -1) {
                        icon = 'elementary';
                    } if (key.indexOf('mate') > -1) {
                        icon = 'mate';
                    } if (key.indexOf('cinnamon') > -1 || key.indexOf('mint') > -1) {
                        icon = 'cinnamon';
                    } if (key.indexOf('enlightenment') > -1 || (key.length === 3 && /e[1-9]{2}/g.test(key))) {
                        icon = 'enlightenment';
                    } if (key.indexOf('liri') > -1) {
                        icon = 'liri';
                    } if (key.indexOf('i3') > -1) {
                        icon = 'i3';
                    } if (key.indexOf('xmonad') > -1) {
                        icon = 'xmonad';
                    } if (key.indexOf('budgie') > -1 || key.indexOf('solus') > -1) {
                        icon = 'budgie';
                    }

                    if (!icon) {
                        return '';
                    }

                    return require('../assets/images/desktops/' + icon + '.png');
                }
            }
        }
    };
</script>

<style lang="scss" scoped>
    .item {
        font-family: 'Lato', 'Noto Sans', sans-serif;
        font-style: italic;

        border-radius: 5px;
        transition: background-color 125ms ease-in-out;

        min-width: 150px;
    }

    .item.selected {
        border-bottom: solid 2px;
        background: rgba(255, 255, 255, 0.055);
    }

    .item:hover {
        cursor: pointer;
        background: rgba(255, 255, 255, 0.115);
    }

    .item.desktop {
        font-weight: 300;
        font-size: 44px;

        padding: 7px 19px;
        margin-bottom: 20px;
    }

    .item.user {
        font-weight: 300;
        font-size: 42px;

        padding: 3px 18px 8px;

        margin-bottom: 25px;
    }

    .username {
        font-weight: bold;
    }

    .icon-container {
        display: inline-block;

        width: 45px;
        height: 45px;

        margin-right: 6px;
    }

    .item.user .icon-container {
        margin-right: 8px;
    }

    .icon {
        height: 45px;
        margin-bottom: -6px;
    }

    .item.user .icon {
        margin-bottom: -8px;
    }

    @media (max-height: 850px) {
        .item.user {
            font-size: 40px;
        }

        .item.desktop {
            font-size: 41px;
        }

        .icon {
            margin-bottom: -5px;
        }
    }
</style>
