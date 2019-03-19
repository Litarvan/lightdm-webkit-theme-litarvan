# Litarvan's LightDM WebKit2 theme

[![Arch Release](https://img.shields.io/badge/arch-2.0.7-blue.svg?style=flat-square)](https://www.archlinux.org/packages/community/any/lightdm-webkit-theme-litarvan/)&nbsp; [![Latest Release](https://img.shields.io/github/release/Litarvan/lightdm-webkit-theme-litarvan.svg?style=flat-square&label=github)](https://github.com/Litarvan/lightdm-webkit-theme-litarvan/releases) &nbsp;![Github downloads](https://img.shields.io/github/downloads/Litarvan/lightdm-webkit-theme-litarvan/total.svg?style=flat-square)

**=> Screenshots below**

# [Live testing](https://litarvan.github.io/lightdm-webkit-theme-litarvan/)

# Customize release
Customize the following items within `/usr/share/lightdm-webkit/themes/litarvan/img/`:
* Background: `background.xxxxxxxx.png`
* OS Logo:`os.xxxxxxxx.png`

# Installation

## Arch Linux (2.0.X : Stable)

```
pacman -S lightdm-webkit-theme-litarvan
```

If not already done, edit `/etc/lightdm/lightdm.conf` and set `greeter-session=lightdm-webkit2-greeter`.
Then edit `/etc/lightdm/lightdm-webkit.conf` and set `theme` or `webkit-theme` to `litarvan`.

## Manual (Any / Pre-release)

* Install lightdm-webkit2-greeter using pacman if not already done
* Unzip the [tar file](https://github.com/Litarvan/lightdm-webkit-theme-litarvan/releases) in `/usr/share/lightdm-webkit/themes/litarvan/`
* Edit `/etc/lightdm/lightdm-webkit2-greeter.conf` and set `theme` or `webkit-theme` to `litarvan`.

# Building

```
$ ./build.sh
```

Will generate a lightdm-webkit-theme-litarvan-VERSION.tar.gz in the current folder.

# Screenshots

![Setup screenshot](https://cdn.discordapp.com/attachments/447725868140331019/506270938468188160/unknown.png)

![Splash screenshot](https://cdn.discordapp.com/attachments/447725868140331019/506270918776061953/unknown.png)

![Login screnshot](https://cdn.discordapp.com/attachments/447725868140331019/506270689896955916/unknown.png)

![Desktops screenshot](https://cdn.discordapp.com/attachments/447725868140331019/506271052431884288/unknown.png)
