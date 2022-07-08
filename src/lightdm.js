'use strict';

const DEBUG_PASSWORD = 'test';

window.lightdm_debug = window.lightdm === undefined;

if (window.lightdm_debug) {
    console.log(' --> Theme is running outside LightDM, using placeholder data');
    window.theme_utils = {
        dirlist(_) {
            return [];
        }
    };

    window.greeter_config = {
        branding: {
            background_images_dir: 'nowhere this is live test'
        }
    };

    let brightness = 85;

    window.lightdm = {
        is_authenticated: false,
        authentication_user: undefined,
        default_session: 'plasma-shell',
        can_access_battery: true,
        can_access_brightness: true,
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
                name: 'xmonad',
                key: 'xmonad'
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
            },
            {
                name: 'Openbox',
                key: 'openbox'
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
        language: {code: "en_US", name: "American English", territory: "United States"},
        battery_data: {
            level: 15,
            ac_status: true,
        },
        battery_update: {
            _callbacks: [],
            _emit: () => {
                window.lightdm.battery_update._callbacks.forEach((cb) => {
                    cb();
                });
            },
            connect: (callback) => {
                window.lightdm.battery_update._callbacks.push(callback);
            },
            disconnect: (callback) => {
                const ind = window.lightdm.battery_update._callbacks.findIndex((v) => {
                    return callback == v;
                });
                if (ind == -1) return;

                window.lightdm.battery_update._callbacks.splice(ind, 1);
            }
        },
        brightness_update: {
            _callbacks: [],
            _emit: () => {
                window.lightdm.brightness_update._callbacks.forEach((cb) => {
                    cb();
                });
            },
            connect: (callback) => {
                window.lightdm.brightness_update._callbacks.push(callback);
            },
            disconnect: (callback) => {
                const ind = window.lightdm.brightness_update._callbacks.findIndex((v) => {
                    return callback == v;
                });
                if (ind == -1) return;
                window.lightdm.brightness_update._callbacks.splice(ind, 1);
            }
        },
        authenticate: (username) => {
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
                authentication_complete();
            }
            else
            {
                setTimeout(() => authentication_complete(), 2000);
            }
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

    Object.defineProperty(window.lightdm, 'brightness', {
        get: () => {
            return brightness;
        },
        set: (value) => {
            brightness = value;
            window.lightdm.brightness_update._emit();
        },
    })
}

let password;
let errorCB;
let completeCB;
let messageCB;

window.set_complete_cb = (cb) => {
    completeCB = cb;
}

window.lightdm_cancel_login = () => {
    lightdm.cancel_authentication();
};

window.lightdm_begin_login = (username, cb, errCB, msgCB) => {
    completeCB = cb;
    errorCB = errCB;
    messageCB = msgCB;
    password = undefined;
    
    lightdm.authenticate(username);
};

window.lightdm_login = (username, pass, newSession) => {
    if (newSession) {
        password = pass;
        lightdm.authenticate(username);
    } else {
        password = undefined;
        lightdm.respond(pass);
    }
};

window.lightdm_start = (desktop) => {
    lightdm.start_session(desktop);
};

window.show_prompt = (text, type) => {
    if (text === "Password: " && password !== undefined)
    {
        lightdm.respond(password);
    }
}

window.authentication_complete = () => {
    if (lightdm.is_authenticated) {
        completeCB();
    } else if (document.head.dataset.wintype === "primary") {
        lightdm.cancel_authentication();
        errorCB();
    }
};

window.show_message = (text, type) => {
    if (messageCB) {
        messageCB(text);  
    }
};

lightdm.authentication_complete?.connect(() => authentication_complete());
lightdm.show_prompt?.connect((text, type) => show_prompt(text, type));
lightdm.show_message?.connect((text, type) => show_message(text, type));

console.log(' --> LightDM provided data :');
console.log(window.lightdm);
