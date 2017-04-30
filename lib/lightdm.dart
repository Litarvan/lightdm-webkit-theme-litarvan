import 'dart:js';

import 'package:js/js.dart';
import 'package:lightdm_webkit_theme_litarvan/components/desktop.dart';

class LightDM {
  Function errorCallback;
  JsObject lightdm;

  List<Desktop> _desktops;

  LightDM(this.errorCallback) {
    this.lightdm = context['lightdm'];
    context.callMethod('init', [allowInterop(errorCallback)]);
  }

  login(String username, String password) => context.callMethod('login', [username, password]);
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
}