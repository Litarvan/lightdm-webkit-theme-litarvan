let local = localStorage.getItem('settings');

let settings = (local ? JSON.parse(local) : null) || {
    first: true,

    mode: 'classic',

    disableSplash: false,
    disableSplashText: false,
    disableIntro: false,
    disableFade: false,
    roundAvatar: false,
    disableAvatar: false
};

function save(s) {
    localStorage.setItem('settings', JSON.stringify(settings = s));
}

export {
    settings,
    save
}