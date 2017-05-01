import 'dart:async';
import 'dart:html';
import 'package:angular2/core.dart';
import 'package:lightdm_webkit_theme_litarvan/components/desktops/desktops_component.dart';
import 'package:lightdm_webkit_theme_litarvan/components/login/login_component.dart';
import 'package:lightdm_webkit_theme_litarvan/components/power_button/power_button_component.dart';
import 'package:lightdm_webkit_theme_litarvan/components/splash/splash_component.dart';
import 'package:lightdm_webkit_theme_litarvan/components/users/users_component.dart';
import 'package:lightdm_webkit_theme_litarvan/util.dart';

@Component(
  selector: 'app',
  templateUrl: 'app_component.html',
  styleUrls: const ['app_component.css'],
  directives: const [SplashComponent, PowerButtonComponent, LoginComponent, UsersComponent, DesktopsComponent]
)
class AppComponent implements OnInit {
  @override
  ngOnInit() {
    new Future.delayed(const Duration(seconds: 2), () {
      fadeSwitch($('#loading'), $('app'), 'block', 1000);
    });
  }
}