<template>
    <div class="clock">
        <span id="hours">{{ hours }}</span>:{{ minutes }}

        <div id="date">
            {{ date }}
        </div>
    </div>
</template>

<script>
    export default
    {
        name: 'clock',

        data()
        {
            const date = new Date();
            const template = 'weekd day month year';
            const days = ['Lundi', 'Mardi', 'Mercredi', 'Jeudi', 'Vendredi', 'Samedi', 'Dimanche'];
            const months = ['Janvier', 'Février', 'Mars', 'Avril', 'Mai', 'Juin', 'Juillet', 'Août', 'Septembre', 'Octobre', 'Novembre', 'Decembre'];

            return {
                hours: date.getHours().toString().padStart(2, '0'),
                minutes: date.getMinutes().toString().padStart(2, '0'),
                date: template.replace('day', date.getDate().toString())
                    .replace('weekd', days[date.getDay() - 1])
                    .replace('month', months[date.getMonth() - 1])
                    .replace('year', date.getFullYear().toString())
            }
        }
    }
</script>

<style scoped>
    @font-face {
        font-family: 'Lato';
        src: url('../assets/fonts/Lato-Regular.ttf');
    }

    @font-face {
        font-family: 'Lato';
        font-weight: 300;
        src: url('../assets/fonts/Lato-Light.ttf');
    }

    .clock {
        font-size: 164px;
        font-weight: 300;
        font-family: 'Lato', 'Noto Sans', sans-serif;

        text-align: center;
    }

    #hours {
        font-weight: bold;
        font-size: 154px;
    }

    #date {
        font-weight: normal;
        margin-top: 1.25vh;
        font-size: 28px;
    }
</style>
