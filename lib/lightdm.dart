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
  List<String> _languages;
  String _language;

  LightDM() {
    this.lightdm = context['lightdm'];

    _desktops = [];
    _users = [];
    _languages = [];

    for (JsObject obj in lightdm['sessions']) {
      _desktops.add(new Desktop(obj['key'], obj['name']));
    }

    for (JsObject obj in lightdm['users']) {
      _users.add(new User(obj['display_name'], obj['username'], obj['image'] != null ? (obj['image'].startsWith('/') ? 'file://' : '') + obj['image'] : 'images/default_user.png'));
    }

    for (JsObject obj in lightdm['languages']) {
      _languages.add(obj['code']);
    }

    _language = lightdm['language'];
    print(_language);
  }

  login(String username, String password, Function completeCB, Function errCB) => context.callMethod('login', [username, password, allowInterop(completeCB), allowInterop(errCB)]);
  start(String desktop) => context.callMethod('start', [desktop]);
  shutdown() => lightdm.callMethod('shutdown');
  reboot() => lightdm.callMethod('restart');

  List<Desktop> get desktops => _desktops;
  List<User> get users => _users;
  List<String> get languages => _languages;
  String get language => _language;
}
