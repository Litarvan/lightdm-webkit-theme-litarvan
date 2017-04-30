import 'dart:async';
import 'dart:html';
import 'package:angular2/core.dart';
import 'package:lightdm_webkit_theme_litarvan/components/login/login_component.dart';
import 'package:lightdm_webkit_theme_litarvan/components/power_button/power_button_component.dart';
import 'package:lightdm_webkit_theme_litarvan/components/splash/splash_component.dart';
import 'package:lightdm_webkit_theme_litarvan/util.dart';

@Component(
  selector: 'app',
  templateUrl: 'app_component.html',
  styleUrls: const ['app_component.css'],
  directives: const [SplashComponent, PowerButtonComponent, LoginComponent]
)
class AppComponent implements OnInit {
  @override
  ngOnInit() {
    var app = document.querySelector('app');
    var loading = document.querySelector('#loading');

    new Future.delayed(const Duration(seconds: 2), () => fadeOut(loading));
    new Future.delayed(const Duration(milliseconds: 2500), () {
      loading.remove();
      app.style.display = 'block';
    });

    new Future.delayed(const Duration(seconds: 3), () => fadeIn(app));
  }
}