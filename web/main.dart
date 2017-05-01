import 'dart:html';
import 'package:angular2/core.dart';
import 'package:angular2/platform/browser.dart';
import 'package:lightdm_webkit_theme_litarvan/components/app/app_component.dart';
import 'package:lightdm_webkit_theme_litarvan/greeter_service.dart';
import 'package:lightdm_webkit_theme_litarvan/lightdm.dart';

void main() {
  bootstrap(AppComponent, [GreeterService,
    provide(LightDM, useValue: new LightDM((err) {
      window.alert('Erreur : $err');
    }))
  ]);
}
