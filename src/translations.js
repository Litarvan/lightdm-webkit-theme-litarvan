import LightDM from './lightdm';

const translations = {
    'en': {
        trigger: 'Press "Space" or "Enter" to login',
        password: 'Password...'
    },
    'fr': {
        trigger: 'Appuyez sur "Espace" ou "Entrée" pour vous connecter',
        password: 'Mot de passe...'
    },
    'nl': {
        trigger: 'Druk op "Spatie" of "Enter" om aan te melden',
        password: 'Wachtwoord...'
    },
    'pl': {
        trigger: 'Naciśnij "Spację" lub "Enter" aby kontynuować',
        password: 'Hasło...'
    },
    'de': {
        trigger: 'Drücken Sie "Leertaste" oder "Enter" um sich einzuloggen',
        password: 'Passwort...'
    },
    'pt': {
        trigger: 'Carrega na tecla "Espaço" ou "Enter" para fazer login',
        password: 'Palavra-passe...'
    },
    'es': {
        trigger: 'Presiona "Espacio" o "Enter" para iniciar sesión',
        password: 'Contraseña...'
    }
};

function getLocale()
{
    let lang = 'en-US';

    LightDM.languages.forEach(l => {
        if (l.name.toLowerCase() === LightDM.language.toLowerCase()) {
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