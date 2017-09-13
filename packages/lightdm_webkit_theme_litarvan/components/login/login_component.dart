import 'dart:html';
import 'dart:async';
import 'package:angular2/core.dart';
import 'package:lightdm_webkit_theme_litarvan/components/clock/clock_component.dart';
import 'package:lightdm_webkit_theme_litarvan/desktop.dart';
import 'package:lightdm_webkit_theme_litarvan/greeter_service.dart';
import 'package:lightdm_webkit_theme_litarvan/lightdm.dart';
import 'package:lightdm_webkit_theme_litarvan/translations.dart';
import 'package:lightdm_webkit_theme_litarvan/user.dart';
import 'package:lightdm_webkit_theme_litarvan/util.dart';

@Component(
  selector: 'login',
  templateUrl: 'login_component.html',
  styleUrls: const ['login_component.css'],
  directives: const [ClockComponent]
)
class LoginComponent implements OnInit {
  LightDM _lightdm;
  GreeterService greeter;
  Translations trans;

  bool login;

  LoginComponent(this.greeter, this._lightdm, this.trans);

  users() {
    if (!login) {
      fadeSwitch($('login'), $('users'), 'inline');
    }
  }

  desktops() {
    if (!login) {
      fadeSwitch($('login'), $('desktops'), 'inline');
    }
  }

  ngOnInit() {
    window.onKeyUp.listen((event) {
      var login = $('login');

      if (login.style.opacity != '' || login.style.display != 'inline-block') {
        return;
      }

      if (event.keyCode == KeyCode.ESC) {
        fadeSwitch(login, $('splash'), 'block');
      } else if (event.keyCode == KeyCode.ENTER && !this.login) {
        var password = $('#password');

        password.setAttribute('readonly', 'true');
        this.login = true;

        setEnabled() {
          password.attributes.remove('readonly');
          password.value = "";
          this.login = false;
        }

        this._lightdm.login(greeter.user.username, (password as InputElement).value, () {
          setEnabled();
	  shutdown();

	  new Future.delayed(const Duration(milliseconds: 500), () {
              _lightdm.start(greeter.desktop.key);
	  });
        }, (err) {
          $('#error').innerHtml = err == 'auth' ? 'Invalid password' : err;

          setEnabled();
        });
      }
    });
  }
}
