# Litarvan's LightDM WebKit2 theme
[![Latest Release][release]](https://github.com/Litarvan/lightdm-webkit-theme-litarvan/releases) &nbsp;[![AUR Votes][aur]](https://aur.archlinux.org/packages/lightdm-webkit-theme-litarvan)

**=> Screenshots below**

# [Live testing](https://litarvan.github.io/lightdm-webkit-theme-litarvan/)

# [AUR page](https://aur.archlinux.org/packages/lightdm-webkit-theme-litarvan)

# Features

 - Arch logo splash
 - English/French language
 - Hour and date
 - User/Desktop switching (saved)
 - Shutdown/Reboot buttons
 - Fade in on display, fade out on session start

# How to install

## AUR

Requires **web-greeter** (aka lightdm-webkit2-greeter)

```
yaourt -S lightdm-webkit-theme-litarvan
```

Then edit `/etc/lightdm/lightdm-webkit.conf` and set webkit-theme to litarvan

## Manual

* Unzip the [tar file](https://github.com/Litarvan/lightdm-webkit-theme-litarvan/releases) in `/usr/share/lightdm-webkit/themes/litarvan/`
* Edit `/etc/lightdm/lightdm-webkit.conf` and set `webkit-theme` to litarvan

# Screenshots

![Main screenshot](https://i.gyazo.com/a3d80875d710e63a786eb356822093ef.png)

![Login screnshot](https://i.gyazo.com/7a282eb525fe973c673b088a2f7e2db8.png)

![Splash screenshot](https://i.gyazo.com/70686f52d6caa3155d8c6332e14cb19a.png)

[release]: https://img.shields.io/github/release/Litarvan/lightdm-webkit-theme-litarvan.svg?style=flat-square "Latest Release"
[aur]: https://img.shields.io/aur/votes/lightdm-webkit-theme-litarvan.svg?maxAge=604800&style=flat-square "AUR Votes"
