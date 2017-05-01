import 'dart:html';
import 'package:angular2/core.dart';
import 'package:lightdm_webkit_theme_litarvan/components/clock/clock_component.dart';
import 'package:lightdm_webkit_theme_litarvan/desktop.dart';
import 'package:lightdm_webkit_theme_litarvan/greeter_service.dart';
import 'package:lightdm_webkit_theme_litarvan/lightdm.dart';
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
  GreeterService _greeter;

  Desktop desktop;
  User user;

  bool login;

  LoginComponent(this._greeter, this._lightdm) {
    this.desktop = this._greeter.desktop;
    this.user = this._greeter.user;

    this._greeter.onChange = () {
      this.desktop = this._greeter.desktop;
      this.user = this._greeter.user;
    };
  }

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
          this.login = false;
        }

        print((password as InputElement).value);
        print(password.text);
        this._lightdm.login(user.username, (password as InputElement).value, () {
          setEnabled();

          _lightdm.start(desktop.key);
        }, (err) {
          $('#error').innerHtml = err == 'auth' ? 'Invalid password' : err;

          setEnabled();
        });
      }
    });
  }
}