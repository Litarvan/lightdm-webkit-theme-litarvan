<template>
    <div class="clock">
        <span id="hours">{{ hours | pad }}</span>:{{ minutes | pad }}

        <div id="date">
            {{ date }}
        </div>
    </div>
</template>

<script>
    import { getLocale } from '../translations';

    export default {
        name: 'clock',

        mounted() {
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

<style scoped>
    .clock {
        font-size: 164px;
        font-weight: 300;
        font-family: 'Lato', 'Noto Sans', sans-serif;
        line-height: 1.1;

        text-align: center;
    }

    #hours {
        font-weight: bold;
        font-size: 156px;
    }

    #date {
        font-weight: normal;
        margin-top: 2.25vh;
        font-size: 28px;
    }
</style>
