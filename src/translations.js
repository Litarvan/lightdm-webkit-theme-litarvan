const translations = {
    // English
    'en': {
        trigger: 'Press Space or Enter to login',
        password: 'Password...',

        shutdown: 'Shutting down...',
        hibernate: 'Hibernating...',
        suspend: 'Suspending...',
        restart: 'Rebooting...',

        setup: 'Setup',
        theming: 'Theming',
        disableSplash: 'Disable splash ("Press Enter" screen)',
        disableSplashText: 'Disable splash text (clock only)',
        disableIntro: 'Disable intro (OS logo)',
        disableFade: 'Disable fade to black after login',
        roundAvatar: 'Round avatar',
        disableAvatar: 'Disable avatar',
        disableZoom: 'Disable x2 zoom (large screen fix)',
        clock12: '12-hours clock format',
        disablePowerTexts: 'Disable "Shutting down..." etc. screens',
        capsLock: 'Caps lock is enabled',

        primaryColor: 'Primary color',
        randomizeBG: 'Select a random one each time',
        bgAdd: 'Backgrounds can be added in:'
    },

    // French
    'fr': {
        trigger: 'Appuyez sur Espace ou Entrée pour vous connecter',
        password: 'Mot de passe...',
        shutdown: 'Arrêt...',
        hibernate: 'Hibernation...',
        suspend: 'Mise en veille...',
        restart: 'Redémarrage...',

        setup: 'Réglages',
        theming: 'Personnalisation',
        disableSplash: 'Désactiver le splash (écran "Appuyez sur entrer")',
        disableSplashText: 'Désactiver le texte du splash (seulement l\'horloge)',
        disableIntro: 'Désactiver l\'introduction (logo de l\'OS)',
        disableFade: 'Désactiver le fondu au noir lors de la connexion',
        roundAvatar: 'Arrondir l\'avatar',
        disableAvatar: 'Désactiver l\'avatar',
        disableZoom: 'Désactiver le zoom x2 (fix des grands écrans)',
        clock12: 'Format 12 heures de l\'horloge',
        disablePowerTexts: 'Désactiver les écrans "Arrêt..." etc.',
        capsLock: 'Verrouillage des majuscules activé',

        primaryColor: 'Couleur principale',
        randomizeBG: 'En choisir un au hasard à chaque fois',
        bgAdd: 'Des fonds peuvent être ajoutés dans :'
    },

    // Dutch (TODO)
    'nl': {
        trigger: 'Druk op Spatie of Enter om aan te melden',
        password: 'Wachtwoord...'
    },

    // Polish
    'pl': {
        trigger: 'Naciśnij Spację lub Enter aby kontynuować',
        password: 'Hasło...',

        shutdown: 'Zamykanie...',
        suspend: 'Wstrzymywanie...',
        restart: 'Ponowne uruchamianie...',

        setup: 'Konfiguracja',
        disableSplash: 'Wyłącz ekran powitalny (zawierający tekst "Naciśnij Enter")',
        disableSplashText: 'Wyłącz tekst na ekranie powitalnym (pozostaw zegar)',
        disableIntro: 'Wyłącz intro (logo systemu operacyjnego)',
        disableFade: 'Wyłącz przejście w czerń po logowaniu',
        roundAvatar: 'Okrągły awatar',
        disableAvatar: 'Wyłącz awatar',
        disableZoom: 'Wyłącz powiększenie x2 (poprawka dla dużych ekranów)',
        clock12: '12-godzinny format wyświetlania czasu',
        capsLock: 'Przycisk Caps lock jest aktywny'
    },

    // German (TODO)
    'de': {
        trigger: 'Drücken Sie Leertaste oder Enter um sich einzuloggen',
        password: 'Passwort...'
    },

    // Portuguese (TODO)
    'pt': {
        trigger: 'Carrega na tecla Espaço ou Enter para fazer login',
        password: 'Palavra-passe...'
    },

    // Spanish (TODO)
    'es': {
        trigger: 'Presiona Espacio o Enter para iniciar sesión',
        password: 'Contraseña...'
    },

    // Hebrew (TODO)
    'he': {
        trigger: 'לחץ על רווח או Enter כדי להכנס',
        password: 'ססמה...',

        shutdown: 'מכבה...',
        suspend: 'משהה...',
        restart: 'מפעיל מחדש...',

        setup: 'הגדרות',
        disableSplash: 'בטל מסך קדמי (מסך "לחץ Enter")',
        disableSplashText: 'בטל טקסט של מסך קדמי (רק שעון)',
        disableIntro: 'בטל הקדמה (סמל מערגת הפעלה)',
        disableFade: 'בטל עמעום לשחור בכניסה',
        roundAvatar: 'יצגן עגול',
        disableAvatar: 'בטל יצגן',
        disableZoom: 'בטל מיקוד x2 (תיקון למסך גדול)',
        clock12: 'תבנית שעון של 12 שעות',
        capsLock: 'נעילת Caps פעילה',

        primaryColor: 'צבע ראשי'
    },
    // Chinese (Simplified)
    'zh-CN': {
        disableItalic: true, // Special key to disable the use of italic fonts

        trigger: '按空格或回车登录',
        password: '密码……',

        shutdown: '正在关机……',
        hibernate: '正在休眠……',
        suspend: '正在挂起……',
        restart: '正在重新启动……',

        setup: '设置',
        theming: '主题',
        disableSplash: '禁用启动屏幕（“按回车登录”界面）',
        disableSplashText: '禁用启动屏幕文本（仅时钟）',
        disableIntro: '禁用切入画面（操作系统的Logo）',
        disableFade: '禁用登录后淡入至黑屏',
        roundAvatar: '圆形头像',
        disableAvatar: '禁用头像',
        disableZoom: '禁用两倍（2x）放大（大屏幕修复）',
        clock12: '12小时制',
        disablePowerTexts: '禁用“正在关机……”等屏幕',
        capsLock: '已启用大写锁定',

        primaryColor: '主题色',
        randomizeBG: '每一次选择随机背景',
        bgAdd: '背景图片可以添加至以下目录：'
    },
    // Chinese (Traditional)
    'zh-TW': {
        disableKey: true,

        trigger: '按下空格鍵或輸入鍵登入',
        password: '密碼……',

        shutdown: '正在關機……',
        hibernate: '正在休眠……',
        suspend: '正在暫停……',
        restart: '正在重新啟動……',

        setup: '設定',
        theming: '佈景主題',
        disableSplash: '停用 Splash Screen（「按下輸入鍵登入」畫面）',
        disableSplashText: '停用 Splash 文字（僅時鐘）',
        disableIntro: '停用 Intro（作業系統的Logo）',
        disableFade: '停用登入後淡入至黑色',
        roundAvatar: '圓形頭像',
        disableAvatar: '停用頭像',
        disableZoom: '停用 2x 放大（大螢幕修復）',
        clock12: '12小時制',
        disablePowerTexts: '停用「正在關機……」等畫面',
        capsLock: '已啟用大寫鎖定',

        primaryColor: '主要顏色',
        randomizeBG: '每一次選擇隨機桌布',
        bgAdd: '桌布可加入至：'
    },
    // More ? PR opens !
};

function getLocale()
{
    let lang = 'en-US';

    if (!lightdm.language || !lightdm.languages) {
        return lang;
    }

    lightdm.languages.forEach(l => {
        if (l.name.toLowerCase() === lightdm.language.toLowerCase()) {
            lang = l.code.split('.')[0].replace('_', '-');
        }
    });

    const candidates = [lang, lang.substring(0, 2), 'en'];
    for (const candidate of candidates) {
        if (translations[candidate]) {
            return candidate;
        }
    }

    return lang; // Shouldn't happen
}

function trans(key)
{
    const result = translations[getLocale()][key];
    if (!result) {
        return translations.en[key];
    }

    return result;
}

console.log(`Locale : '${getLocale()}'`);

export {
    getLocale,
    trans
}
