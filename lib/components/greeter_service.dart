import 'dart:html';
import 'package:angular2/core.dart';
import 'package:lightdm_webkit_theme_litarvan/components/desktop.dart';
import 'package:lightdm_webkit_theme_litarvan/lightdm.dart';

@Injectable()
class GreeterService {
  Desktop _desktop;
  LightDM _lightdm;

  GreeterService(this._lightdm);

  Desktop get desktop {
    if (_desktop == null) {
      String key;

      if (window.localStorage.containsKey('desktop')) {
        for (Desktop desktop in _lightdm.desktops) {
          String key = window.localStorage['desktop'];

          if (desktop.key == key) {
            _desktop = desktop;
            break;
          }
        }
      } else {
        _desktop = _lightdm.desktops[0];
      }
    }

    return _desktop;
  }

  void set desktop(Desktop desktop) {
    window.localStorage['desktop'] = (_desktop = desktop).key;
  }
}