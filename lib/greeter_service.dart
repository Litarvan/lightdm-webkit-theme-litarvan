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
  Function _onChange;

  GreeterService(this._lightdm);

  Desktop get desktop {
    if (_desktop == null) {
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

    this._onChange();
  }

  User get user {
    if (_user == null) {
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

    return _user;
  }

  void set user(User user) {
    window.localStorage['user'] = (_user = user).username;

    this._onChange();
  }

  void set onChange(Function func) {
    this._onChange = func;
  }
}