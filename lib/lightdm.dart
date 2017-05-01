import 'dart:js';

import 'package:angular2/core.dart';
import 'package:js/js.dart';
import 'package:lightdm_webkit_theme_litarvan/desktop.dart';
import 'package:lightdm_webkit_theme_litarvan/user.dart';

@Injectable()
class LightDM {
  JsObject lightdm;

  List<Desktop> _desktops;
  List<User> _users;

  LightDM() {
    this.lightdm = context['lightdm'];
  }

  login(String username, String password, Function completeCB, Function errCB) => context.callMethod('login', [username, password, allowInterop(completeCB), allowInterop(errCB)]);
  start(String desktop) => context.callMethod('start', [desktop]);
  shutdown() => lightdm.callMethod('shutdown');
  reboot() => lightdm.callMethod('restart');

  List<Desktop> get desktops {
    if (_desktops == null) {
      _desktops = [];

      for (JsObject obj in lightdm['sessions']) {
        _desktops.add(new Desktop(obj['key'], obj['name']));
      }
    }

    return _desktops;
  }

  List<User> get users {
    if (_users == null) {
      _users = [];

      for (JsObject obj in lightdm['users']) {
        _users.add(new User(obj['display_name'], obj['username'], obj['image'] != null ? (obj['image'].startsWith('/') ? 'file://' : '') + obj['image'] : 'images/default_user.png'));
      }
    }

    return _users;
  }
}
