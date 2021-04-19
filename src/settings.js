let local = localStorage.getItem('settings');

if (local === 'undefined') {
    local = null;
}

export let settings = (local ? JSON.parse(local) : null) || {
    first: true,

    mode: 'classic',

    disableSplash: false,
    disableSplashText: false,
    disableIntro: false,
    disableFade: false,
    roundAvatar: false,
    disableAvatar: false,
    disableZoom: false,
    clock12: false,
    disablePowerTexts: false,
    randomizeBG: false,

    user: lightdm.users[0],
    desktop: lightdm.sessions[0]
};

if (!settings.user) {
    settings.user = lightdm.users.find(u => !!u);
}
if (!settings.desktop) {
    settings.desktop = lightdm.sessions.find(s => !!s);
}

// Handle display name change
lightdm.users.forEach(u => settings.user.username === u.username && (settings.user = u));
lightdm.sessions.forEach(s => settings.desktop.username === s.key && (settings.desktop = s));

save();

export function save(s) {
    localStorage.setItem('settings', JSON.stringify(s ? settings = s : settings));
}

export function avatar(avatar) {
    if (!avatar || avatar === '') {
        return require('./assets/images/default_user.png');
    }

    if (avatar === 'litarvan') {
        return require('./assets/images/litarvan.png');
    }

    return avatar;
}
