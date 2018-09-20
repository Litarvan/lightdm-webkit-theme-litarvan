<template>
    <div class="clock" :class="{ 'small': small }">
        <span id="hours">{{ hours | pad }}</span>:{{ minutes | pad }}

        <div id="date">
            {{ date }}
        </div>
    </div>
</template>

<script>
    import { getLocale } from '@/translations';

    export default {
        name: 'clock',
        props: ['small'],

        mounted() {
            this.setTime();
            this.interval = setInterval(this.setTime, 1000);
        },

        filters: {
            pad: v => v.toString().padStart(2, '0')
        },

        methods: {
            setTime() {
                const date = new Date();

                this.hours = date.getHours();
                this.minutes = date.getMinutes();
                this.date = date.toLocaleDateString(getLocale(), {
                    weekday: 'long',
                    day: 'numeric',
                    month: 'long',
                    year: 'numeric'
                });
            }
        },

        data() {
            return {
                hours: '00',
                minutes: '00',
                date: ''
            };
        },

        beforeDestroy() {
            clearInterval(this.interval);
        }
    }
</script>

<style lang="scss" scoped>
    .clock {
        font-size: 164px;
        font-weight: 300;
        font-family: 'Lato', 'Noto Sans', sans-serif;
        line-height: 1.1;

        text-align: center;
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

    #date {
        font-weight: normal;
        margin-top: 2.25vh;
        font-size: 28px;
    }
</style>
