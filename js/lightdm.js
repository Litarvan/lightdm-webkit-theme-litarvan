'use strict';

window.debug = window.lightdm === undefined;

if (window.debug)
{
    window.lightdm = {
        password_debugged: false,
        is_authenticated: false,
        authentication_user: 'DEBUG USER',
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
            name: 'litarvan'
        }],
        start_authentication: (username) => {
            console.log(`Starting authenticating : '${username}'`);
            show_prompt("Password:");
        },
        cancel_authentication: () => {
            console.log('Auth cancelled');
        },
        respond: (password) => {
            console.log(`Password provided : '${password}'`);

            if (lightdm.password_debugged)
            {
                lightdm.is_authenticated = true;
            }
            else
            {
                lightdm.password_debugged = true;
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

function login(username, pass, cb)
{
    lightdm.start_authentication(username);
    password = pass;

    completeCB = cb;
}

function start(desktop)
{
    lightdm.login(lightdm.authentication_user, desktop);
}

function show_prompt(text, type)
{
    if (text === "Password:")
    {
        lightdm.respond(password);
    }
}

function authentication_complete()
{
    if (lightdm.is_authenticated)
    {
        lightdm.cancel_authentication();
        errorCB("Invalid username/password");
    }
    else
    {
        completeCB(lightdm.authentication_user);
    }
}

function show_message(text, type)
{
    errorCB(text);
}

window.init = (errorCallback) =>
{
    console.log(errorCallback);
    errorCB = errorCallback;
};