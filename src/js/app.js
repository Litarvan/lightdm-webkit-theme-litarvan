$("body").css('background-image', `url("img/background-${Math.floor(Math.random() * 2 + 1)}.jpg")`);
$(document).foundation();

let debug = false;

if (window.lightdm === undefined)
{
    debug = true;

    console.log('Debug activated');

    window.lightdm = {
        password_debugged: false,
        is_authenticated: false,
        authentication_user: 'DEBUG USER',
        default_session: 'Plasma',
        sessions: [
            {
                name: 'KDE Plasma 5',
                key: 'plasma'
            },
            {
                name: 'Gnome 3',
                key: 'gnome-shell'
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
        }
    };
}

let user = null;

let btnLogin = $('#btn-login');
let usernameField = $('#username');
let passwordField = $('#password');
let desktop = $('#desktop');

let desktops = '';

for (let session of lightdm.sessions)
{
    desktops += `<option value=${session.key}>${session.name}</option>`;
}

desktop.html(desktops);

btnLogin.click(() => {
    enableFields(false);

    let name = usernameField.val();

    for (let u of lightdm.users)
    {
        if (u.name == name)
        {
            user = u;
        }
    }

    if (user == null)
    {
        error(`Can't find user '${name}'`);

        usernameField.val('');
        usernameField.focus();

        return false;
    }

    lightdm.start_authentication(name);

    return false;
});

function enableFields(bool)
{
    usernameField.prop('disabled', !bool);
    passwordField.prop('disabled', !bool);
    btnLogin.prop('disabled', !bool);
}

function error(val)
{
    btnLogin.css("color", "red");
    btnLogin.val(val);

    setTimeout(() => {
        enableFields(true);

        passwordField.val('');
        passwordField.focus();
    }, 3000);
}

// LightDM callbacks

function show_prompt(text, type)
{
    if (text != "Password:")
    {
        show_message(`Unknown prompt '${text}' (type is ${type})`, "error");
    }

    lightdm.respond(passwordField.val());
}

function authentication_complete()
{
    if (lightdm.is_authenticated)
    {
        lightdm.login(lightdm.authentication_user, desktop.val());
    }
    else
    {
        lightdm.cancel_authentication();
        error("Authentication error");
    }
}

function show_message(text, type)
{
    if (text.length == 0)
    {
        return;
    }

    let messages = $('#messages');
    messages.css('visibility', 'visible');

    if (type == "error")
    {
        text = `<font color="red">${text}</font>`;
    }

    text = text + '<br>';
    messages.html(messages.html() + text);
}