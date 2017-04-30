import 'package:angular2/core.dart';
import 'package:lightdm_webkit_theme_litarvan/components/clock/clock_component.dart';
import 'package:lightdm_webkit_theme_litarvan/components/greeter_service.dart';

@Component(
  selector: 'login',
  templateUrl: 'login_component.html',
  styleUrls: const ['login_component.css'],
  directives: const [ClockComponent],
  providers: const [GreeterService]
)
class LoginComponent {
  GreeterService _greeterService;

  String desktop;

  LoginComponent(this._greeterService) {
    this.desktop = this._greeterService.desktop.name;
  }
}