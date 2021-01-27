const translations = {
    // English
    'en': {
        trigger: 'Press Space or Enter to login',
        password: 'Password...',

        shutdown: 'Shutting down...',
        hibernate: 'Hibernating...',
        suspend: 'Suspending...',
        restart: 'Rebooting...',

        setup: 'Setup',
        theming: 'Theming',
        disableSplash: 'Disable splash ("Press Enter" screen)',
        disableSplashText: 'Disable splash text (clock only)',
        disableIntro: 'Disable intro (OS logo)',
        disableFade: 'Disable fade to black after login',
        roundAvatar: 'Round avatar',
        disableAvatar: 'Disable avatar',
        disableZoom: 'Disable x2 zoom (large screen fix)',
        clock12: '12-hours clock format',
        disablePowerTexts: 'Disable "Shutting down..." etc. screens',
        capsLock: 'Caps lock is enabled',

        primaryColor: 'Primary color',
        randomizeBG: 'Select a random one each time',
        bgAdd: 'Backgrounds can be added in:'
    },

    // French
    'fr': {
        trigger: 'Appuyez sur Espace ou Entrée pour vous connecter',
        password: 'Mot de passe...',
        shutdown: 'Arrêt...',
        hibernate: 'Hibernation...',
        suspend: 'Mise en veille...',
        restart: 'Redémarrage...',

        setup: 'Réglages',
        theming: 'Personnalisation',
        disableSplash: 'Désactiver le splash (écran "Appuyez sur entrer")',
        disableSplashText: 'Désactiver le texte du splash (seulement l\'horloge)',
        disableIntro: 'Désactiver l\'introduction (logo de l\'OS)',
        disableFade: 'Désactiver le fondu au noir lors de la connexion',
        roundAvatar: 'Arrondir l\'avatar',
        disableAvatar: 'Désactiver l\'avatar',
        disableZoom: 'Désactiver le zoom x2 (fix des grands écrans)',
        clock12: 'Format 12 heures de l\'horloge',
        disablePowerTexts: 'Désactiver les écrans "Arrêt..." etc.',
        capsLock: 'Verrouillage des majuscules activé',

        primaryColor: 'Couleur principale',
        randomizeBG: 'En choisir un au hasard à chaque fois',
        bgAdd: 'Des fonds peuvent être ajoutés dans :'
    },

    // Dutch (TODO)
    'nl': {
        trigger: 'Druk op Spatie of Enter om aan te melden',
        password: 'Wachtwoord...'
    },

    // Polish
    'pl': {
        trigger: 'Naciśnij Spację lub Enter aby kontynuować',
        password: 'Hasło...',

        shutdown: 'Zamykanie...',
        suspend: 'Wstrzymywanie...',
        restart: 'Ponowne uruchamianie...',

        setup: 'Konfiguracja',
        disableSplash: 'Wyłącz ekran powitalny (zawierający tekst "Naciśnij Enter")',
        disableSplashText: 'Wyłącz tekst na ekranie powitalnym (pozostaw zegar)',
        disableIntro: 'Wyłącz intro (logo systemu operacyjnego)',
        disableFade: 'Wyłącz przejście w czerń po logowaniu',
        roundAvatar: 'Okrągły awatar',
        disableAvatar: 'Wyłącz awatar',
        disableZoom: 'Wyłącz powiększenie x2 (poprawka dla dużych ekranów)',
        clock12: '12-godzinny format wyświetlania czasu',
        capsLock: 'Przycisk Caps lock jest aktywny'
    },

    // German (TODO)
    'de': {
        trigger: 'Drücken Sie Leertaste oder Enter um sich einzuloggen',
        password: 'Passwort...'
    },

    // Portuguese (TODO)
    'pt': {
        trigger: 'Carrega na tecla Espaço ou Enter para fazer login',
        password: 'Palavra-passe...'
    },

    // Spanish (TODO)
    'es': {
        trigger: 'Presiona Espacio o Enter para iniciar sesión',
        password: 'Contraseña...'
    },

    // Hebrew (TODO)
    'he': {
        trigger: 'לחץ על רווח או Enter כדי להכנס',
        password: 'ססמה...',

        shutdown: 'מכבה...',
        suspend: 'משהה...',
        restart: 'מפעיל מחדש...',

        setup: 'הגדרות',
        disableSplash: 'בטל מסך קדמי (מסך "לחץ Enter")',
        disableSplashText: 'בטל טקסט של מסך קדמי (רק שעון)',
        disableIntro: 'בטל הקדמה (סמל מערגת הפעלה)',
        disableFade: 'בטל עמעום לשחור בכניסה',
        roundAvatar: 'יצגן עגול',
        disableAvatar: 'בטל יצגן',
        disableZoom: 'בטל מיקוד x2 (תיקון למסך גדול)',
        clock12: 'תבנית שעון של 12 שעות',
        capsLock: 'נעילת Caps פעילה',

        primaryColor: 'צבע ראשי'
    },

    // More ? PR opens !
};

function getLocale()
{
    let lang = 'en-US';

    if (!lightdm.language || !lightdm.languages) {
        return lang;
    }

    lightdm.languages.forEach(l => {
        if (l.name.toLowerCase() === lightdm.language.toLowerCase()) {
            lang = l.code.split('.')[0].replace('_', '-');
        }
    });

    return lang;
}

function trans(key)
{
    let lang = translations[getLocale().substring(0, 2)];
    if (!lang) {
        lang = translations['en'];
    }

    const result = lang[key];

    if (!result) {
        return translations.en[key];
    }

    return result;
}

export {
    getLocale,
    trans
}
