import 'dart:html';
import 'package:angular2/core.dart';
import 'package:lightdm_webkit_theme_litarvan/desktop.dart';
import 'package:lightdm_webkit_theme_litarvan/lightdm.dart';
import 'package:lightdm_webkit_theme_litarvan/user.dart';

@Injectable()
class GreeterService {
  Desktop _desktop;
  User _user;

  LightDM _lightdm;

  GreeterService(this._lightdm) {
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

    if (window.localStorage.containsKey('user')) {
      for (User user in _lightdm.users) {
        String username = window.localStorage['user'];

        if (user.username == username) {
          _user = user;
          break;
        }
      }
    } else {
      _user = _lightdm.users[0];
    }
  }

  Desktop get desktop => _desktop;

  void set desktop(Desktop desktop) {
    window.localStorage['desktop'] = (_desktop = desktop).key;
  }

  User get user => _user;

  void set user(User user) {
    window.localStorage['user'] = (_user = user).username;
  }
}