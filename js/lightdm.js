'use strict';

const DEBUG_PASSWORD = 'test';

window.debug = window.lightdm === undefined;

if (window.debug)
{
    window.lightdm = {
        is_authenticated: false,
        authentication_user: undefined,
        default_session: 'plasma-shell',
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
            }
        ],
        users: [{
            display_name: 'John Doe',
            username: 'johnd'
        }, {
            display_name: 'Adrien Navratil',
            username: 'litarvan',
            image: 'images/litarvan.png'
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
        restart: () => {
            alert('(DEBUG: System is rebooting)')
        }
    };
}

let password;
let errorCB;
let completeCB;

function login(username, pass, cb, errCB)
{
    completeCB = cb;
    errorCB = errCB;
    password = pass;

    lightdm.start_authentication(username);
}

function start(desktop)
{
    lightdm.login(lightdm.authentication_user, desktop);
}

function show_prompt(text, type)
{
    if (text === "Password: ")
    {
        lightdm.respond(password);
    }
}

function authentication_complete()
{
    if (lightdm.is_authenticated)
    {
        completeCB();
    }
    else
    {
        lightdm.cancel_authentication();
        errorCB('Invalid username/password');
    }
}

function show_message(text, type)
{
    errorCB(text);
}
