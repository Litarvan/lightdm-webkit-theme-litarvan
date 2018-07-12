<template>
    <div class="clock">
        <span id="hours">{{ hours }}</span>:{{ minutes }}

        <div id="date">
            {{ date }}
        </div>
    </div>
</template>

<script>
    import LightDM from '../lightdm';

    export default
    {
        name: 'clock',

        data()
        {
            const date = new Date();

            let lang = 'en-US';

            LightDM.languages.forEach(l => {
                if (l.name.toLowerCase() === LightDM.language.toLowerCase())
                {
                    lang = l.code.split('.')[0].replace('_', '-');
                }
            });

            return {
                hours: date.getHours().toString().padStart(2, '0'),
                minutes: date.getMinutes().toString().padStart(2, '0'),
                date: date.toLocaleDateString(lang, {
                    weekday: 'long',
                    day: 'numeric',
                    month: 'long',
                    year: 'numeric'
                })
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
