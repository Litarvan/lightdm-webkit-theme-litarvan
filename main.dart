import 'package:angular2/platform/browser_static.dart';import 'main.template.dart' as ngStaticInit;
import 'package:lightdm_webkit_theme_litarvan/components/app/app_component.dart';
import 'package:lightdm_webkit_theme_litarvan/greeter_service.dart';
import 'package:lightdm_webkit_theme_litarvan/lightdm.dart';
import 'package:lightdm_webkit_theme_litarvan/translations.dart';

void main() {
  bootstrapStatic(AppComponent, [GreeterService, LightDM, Translations], () { ngStaticInit.initReflector(); });
}
