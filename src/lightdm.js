'use strict';

const DEBUG_PASSWORD = 'test';

window.lightdm_debug = window.lightdm === undefined;

if (window.lightdm_debug) {
    window.theme_utils = {
        dirlist(_) {
            return [];
        }
    };

    window.greeter_config = {
        branding: {
            background_images: 'nowhere this is live test'
        }
    };

    window.lightdm = {
        is_authenticated: false,
        authentication_user: undefined,
        default_session: 'plasma-shell',
        can_suspend: true,
        can_hibernate: true,
        sessions: [
            {
                name: 'KDE 5',
                key: 'plasma-shell'
            },
            {
                name: 'Gnome 3',
                key: 'gnome-shell'
            },
            {
                name: 'XFCE 4',
                key: 'xfce'
            },
            {
                name: 'Cinnamon',
                key: 'cinnamon'
            },
            {
                name: 'i3',
                key: 'i3'
            },
            {
                name: 'awesome',
                key: 'awesome'
            },
            {
                name: 'xmonad',
                key: 'xmonad'
            },
            {
                name: 'bspwm',
                key: 'bspwm'
            },
            {
                name: 'Qtile',
                key: 'qtile'
            },
            {
                name: 'Kodi',
                key: 'kodi'
            },
            {
                name: 'exwm',
                key: 'exwm'
            }
        ],
        users: [{
            display_name: 'John Doe',
            username: 'johnd'
        }, {
            display_name: 'Adrien Navratil',
            username: 'litarvan',
            image: 'litarvan'
        }],
        languages: [{
            name: 'American English',
            code: 'en_US.utf8'
        }, {
            name: 'Français',
            code: 'fr_FR.utf8'
        }],
        language: 'American English',
        start_authentication: (username) => {
            console.log(`Starting authenticating : '${username}'`);
            lightdm.authentication_user = username;

            show_prompt("Password: ");
        },
        cancel_authentication: () => {
            console.log('Auth cancelled');
        },
        respond: (password) => {
            console.log(`Password provided : '${password}'`);

            if (password === DEBUG_PASSWORD)
            {
                lightdm.is_authenticated = true;
            }
            else
            {
                let now = new Date().getTime();
                while (new Date().getTime() < now + 2000);
            }

            authentication_complete();
        },
        login: (user, session) => {
            alert(`Logged with '${user}' (Session: '${session}') !`);
        },
        shutdown: () => {
            alert('(DEBUG: System is shutting down)')
        },
        hibernate: () => {
            alert('(DEBUG: System is hibernating)')
        },
        suspend: () => {
            alert('(DEBUG: System is suspending)')
        },
        restart: () => {
            alert('(DEBUG: System is rebooting)')
        }
    };
}

let password;
let errorCB;
let completeCB;

window.lightdm_login = (username, pass, cb, errCB) => {
    completeCB = cb;
    errorCB = errCB;
    password = pass;

    lightdm.start_authentication(username);
};

window.lightdm_start = (desktop) => {
    lightdm.login(lightdm.authentication_user, desktop);
};

window.show_prompt = (text, type) => {
    if (text === "Password: ")
    {
        lightdm.respond(password);
    }
};

window.authentication_complete = () => {
    if (lightdm.is_authenticated) {
        completeCB();
    } else {
        lightdm.cancel_authentication();
        errorCB('Invalid username/password');
    }
};

window.show_message = (text, type) => {
    errorCB(text);
};
