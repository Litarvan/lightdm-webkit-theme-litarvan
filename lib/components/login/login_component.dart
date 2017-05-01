import 'dart:html';
import 'package:angular2/core.dart';
import 'package:lightdm_webkit_theme_litarvan/components/clock/clock_component.dart';
import 'package:lightdm_webkit_theme_litarvan/desktop.dart';
import 'package:lightdm_webkit_theme_litarvan/greeter_service.dart';
import 'package:lightdm_webkit_theme_litarvan/user.dart';
import 'package:lightdm_webkit_theme_litarvan/util.dart';

@Component(
  selector: 'login',
  templateUrl: 'login_component.html',
  styleUrls: const ['login_component.css'],
  directives: const [ClockComponent]
)
class LoginComponent implements OnInit {
  GreeterService _greeter;

  Desktop desktop;
  User user;

  LoginComponent(this._greeter) {
    this.desktop = this._greeter.desktop;
    this.user = this._greeter.user;

    this._greeter.onChange = () {
      this.desktop = this._greeter.desktop;
      this.user = this._greeter.user;
    };
  }

  users() {
    fadeSwitch($('login'), $('users'), 'inline');
  }

  ngOnInit() {
    window.onKeyUp.listen((event) {
      var login = $('login');

      if (event.keyCode == KeyCode.ESC && login.style.opacity == '') {
        fadeSwitch(login, $('splash'), 'block');
      }
    });
  }
}