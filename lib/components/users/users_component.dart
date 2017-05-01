import 'package:angular2/core.dart';
import 'package:lightdm_webkit_theme_litarvan/greeter_service.dart';
import 'package:lightdm_webkit_theme_litarvan/lightdm.dart';
import 'package:lightdm_webkit_theme_litarvan/user.dart';
import 'package:lightdm_webkit_theme_litarvan/util.dart';

@Component(
  selector: 'users',
  templateUrl: 'users_component.html',
  styleUrls: const ['users_component.css']
)
class UsersComponent {
  LightDM _lightDM;
  GreeterService _greeter;

  List<User> users;

  UsersComponent(this._lightDM, this._greeter) {
    this.users = this._lightDM.users;
  }

  apply(User user) {
    _greeter.user = user;

    fadeSwitch($('users'), $('login'), 'inline-block');
    focus();
  }
}