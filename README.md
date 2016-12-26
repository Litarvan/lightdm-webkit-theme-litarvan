# Litarvan's HTML LightDM Theme

## Features

* Randomly chosen background
* **Fully responsive**
* **Lightweight and simple**
* Simply debuggable

## Screenshots

![Second screenshot](https://i.gyazo.com/7eb870c4d5e5a649b639298d9ad33250.png)
![First screenshot](https://i.gyazo.com/cf4fcf1947b986b9343a3984ba217190.png)

## Customizing

You can the logo and the backgounrd in src/img.
You can also edit some constants in src/scss/_settings.scss

## Building

```
$ npm install
$ gulp dist
```

## Debugging

**WARNING:** Before debugging, change every *.min.css and *.min.js in **src/index.html** to *.css or *.js

For debugging, do :

```
$ gulp clean
$ gulp build:dev
$ gulp watch
```

Then open build/index.html in your navigator, every change you make will be updated (you'll just need to refresh).

window.lightdm is automatically created with some debug fields/functions, to test authentication use username **litarvan** and any password. First, an authentication error will be thrown for debugging, then it will work.

## Installing

1) Unzip lightdm-webkit-theme-litarvan-1.0.0.zip to /usr/share/lightdm-webkit/themes/lightdm-webkit-theme-litarvan/
2) Open /etc/lightdm/lightdm-webkit2-greeter.conf and change webkit-theme to lightdm-webkit-theme-litarvan
3) Restart LightDM (Close session or restart computer)