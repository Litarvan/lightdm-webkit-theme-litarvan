import 'package:angular2/core.dart';
import 'package:lightdm_webkit_theme_litarvan/lightdm.dart';

@Injectable()
class Translations {
  static const ENGLISH = const {
    'password': 'Password...',
    'splash': 'Press "Space" or "Enter" to login',
    'date': 'weekd,  month day,  year',
    'days': const ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'],
    'months': const ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
  };

  static const FRENCH = const {
    'password': 'Mot de passe...',
    'splash': 'Appuyez sur "Espace" ou "Entrée" pour vous connecter',
    'date': 'weekd day month year',
    'days': const ['Lundi', 'Mardi', 'Mercredi', 'Jeudi', 'Vendredi', 'Samedi', 'Dimanche'],
    'months': const ['Janvier', 'Février', 'Mars', 'Avril', 'Mai', 'Juin', 'Juillet', 'Août', 'Septembre', 'Octobre', 'Novembre', 'Decembre']
  };

  static const DUTCH = const {
    'password': 'Wachtwoord...',
    'splash': 'Druk op "Spatie" of "Enter" om aan te melden',
    'date': 'weekd day month year',
    'days': const ['Maandag', 'Dinsdag', 'Woensdag', 'Donderdag', 'Vrijdag', 'Zaterdag', 'Zondag'],
    'months': const ['Januari', 'Februari', 'Maart', 'April', 'Mei', 'Juni', 'Juli', 'Augustus', 'September', 'October', 'November', 'December']
  };

static const POLISH = const {
    'password': 'Hasło...',
    'splash': 'Naciśnij "Spację" lub "Enter" aby kontynuować',
    'date': 'weekd, day month year',
    'days': const ['Poniedziałek', 'Wtorek', 'Środa', 'Czwartek', 'Piątek', 'Sobota', 'Niedziela'],
    'months': const ['Stycznia', 'Lutego', 'Marca', 'Kwietnia', 'Maja', 'Czerwca', 'Lipca', 'Sierpnia', 'Września', 'Października', 'Listopada', 'Grudnia']
};
  
  static const GERMAN = const {
    'password': 'Passwort...',
    'splash': 'Drücken Sie "Leertaste" oder "Enter" um sich einzuloggen',
    'date': 'weekd day month year',
    'days': const ['Montag', 'Dienstag', 'Mittwoch', 'Donnerstag', 'Freitag', 'Samstag', 'Sonntag'],
    'months': const ['Januar', 'Februar', 'März', 'April', 'Mai', 'Juni', 'Juli', 'August', 'September', 'Oktober', 'November', 'Dezember']
  };
  
  static const PORTUGUESE = const {
    'password': 'Palavra-passe...',
    'splash': 'Carrega na tecla "Espaço" ou "Enter" para fazer login',
    'date': 'weekd,  month day,  year',
    'days': const ['Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sábado', 'Domingo'],
    'months': const ['Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro']
  };
  
    static const SPANISH = const {
    'password': 'Contraseña...',
    'splash': 'Presiona "Espacio" o "Enter" para iniciar sesión',
    'date': 'weekd,  month day,  year',
    'days': const ['Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado', 'Domingo'],
    'months': const ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre']
  };


  LightDM _lightdm;

  Translations(this._lightdm);

  dynamic get(String key) {
    var lang = _lightdm.language?.toLowerCase();

    switch(lang) {
        case 'français':
            return FRENCH[key];
            break;
        case 'nederlands':
            return DUTCH[key];
            break;
        case 'polski':
            return POLISH[key];
            break;
        case 'deutsch':
            return GERMAN[key];
            break;
        case 'portuguese':
            return PORTUGUESE[key];
            break;
        case 'spanish':
            return SPANISH[key];
            break;
        default:
            return ENGLISH[key];
    }
  }

  operator [](String key) {
    return get(key);
  }
}
