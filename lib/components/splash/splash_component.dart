import 'dart:async';
import 'dart:html';
import 'package:angular2/core.dart';
import 'package:lightdm_webkit_theme_litarvan/components/clock/clock_component.dart';
import 'package:lightdm_webkit_theme_litarvan/util.dart';

@Component(
  selector: 'splash',
  styleUrls: const ['splash_component.css'],
  templateUrl: 'splash_component.html',
  directives: const [ClockComponent]
)
class SplashComponent implements OnInit {
  @override
  ngOnInit() {
    window.onKeyUp.listen((event) {
      if (event.keyCode == KeyCode.ENTER || event.keyCode == KeyCode.SPACE) {
        var splash = document.querySelector('splash');
        var login = document.querySelector('login');

        fadeOut(splash);

        new Future.delayed(const Duration(milliseconds: 500), () {
          splash.remove();

          login.style.display = 'inline-block';

          new Future.delayed(const Duration(milliseconds: 100), () {
            fadeIn(login);

            document.querySelector('#password').focus();
          });
        });
      }
    });
  }
}
