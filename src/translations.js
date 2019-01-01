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
        clock24: '24-hour clock format'
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
        clock24: 'Format 24 heures de l\'horloge'
    },

    // Dutch (TODO)
    'nl': {
        trigger: 'Druk op Spatie of Enter om aan te melden',
        password: 'Wachtwoord...'
    },

    // Polish (TODO)
    'pl': {
        trigger: 'Naciśnij Spację lub Enter aby kontynuować',
        password: 'Hasło...'
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
