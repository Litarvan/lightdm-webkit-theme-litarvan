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

  LightDM _lightdm;

  Translations(this._lightdm);

  dynamic get(String key) {
    switch(_lightdm.language.toLowerCase()) {
        case 'français':
            return FRENCH[key];
            break;
        case 'nederlands':
            return DUTCH[key];
            break;
        default:
            return ENGLISH[key];
    }
  }

  operator [](String key) {
    return get(key);
  }
}