let local = localStorage.getItem('settings');

let settings = (local ? JSON.parse(local) : null) || {
    first: true,

    mode: 'classic',

    disableSplash: false,
    disableSplashText: false,
    disableIntro: false,
    disableFade: false,
    roundAvatar: false,
    disableAvatar: false,

    user: lightdm.users[0],
    desktop: lightdm.sessions[0]
};

// Handle display name change
lightdm.users.forEach(u => settings.user.username === u.username ? settings.user = u : '');
lightdm.sessions.forEach(s => settings.desktop.username === s.key ? settings.desktop = s : '');

function save(s) {
    localStorage.setItem('settings', JSON.stringify(settings = s));
}

function avatar(avatar) {
    if (!avatar || avatar === '') {
        return require('./assets/images/default_user.png');
    }

    if (avatar === 'litarvan') {
        return require('./assets/images/litarvan.png');
    }

    return avatar;
}

export {
    settings,
    avatar,
    save
}