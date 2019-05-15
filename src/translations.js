const translations = {
    // English
    'en': {
        trigger: 'Press Space or Enter to login',
        password: 'Password...',

        shutdown: 'Shutting down...',
        suspend: 'Suspending...',
        restart: 'Rebooting...',

        setup: 'Setup',
        disableSplash: 'Disable splash ("Press Enter" screen)',
        disableSplashText: 'Disable splash text (clock only)',
        disableIntro: 'Disable intro (OS logo)',
        disableFade: 'Disable fade to black after login',
        roundAvatar: 'Round avatar',
        disableAvatar: 'Disable avatar',
        disableZoom: 'Disable x2 zoom (large screen fix)',
        clock12: '12-hours clock format',
        capsLock: 'Caps lock is enabled'
    },

    // French
    'fr': {
        trigger: 'Appuyez sur Espace ou Entrée pour vous connecter',
        password: 'Mot de passe...',
        shutdown: 'Arrêt...',
        suspend: 'Mise en veille...',
        restart: 'Redémarrage...',

        setup: 'Réglages',
        disableSplash: 'Désactiver le splash (écran "Appuyez sur entrer")',
        disableSplashText: 'Désactiver le texte du splash (seulement l\'horloge)',
        disableIntro: 'Désactiver l\'introduction (logo de l\'OS)',
        disableFade: 'Désactiver le fondu au noir lors de la connexion',
        roundAvatar: 'Arrondir l\'avatar',
        disableAvatar: 'Désactiver l\'avatar',
        disableZoom: 'Désactiver le zoom x2 (fix des grands écrans)',
        clock12: 'Format 12 heures de l\'horloge',
        capsLock: 'Verrouillage des majuscules activé'
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
    return translations[getLocale().substring(0, 2)][key];
}

export {
    getLocale,
    trans
}
