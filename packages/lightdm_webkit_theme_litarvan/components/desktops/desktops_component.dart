import 'package:angular2/core.dart';
import 'package:lightdm_webkit_theme_litarvan/desktop.dart';
import 'package:lightdm_webkit_theme_litarvan/greeter_service.dart';
import 'package:lightdm_webkit_theme_litarvan/lightdm.dart';
import 'package:lightdm_webkit_theme_litarvan/util.dart';

@Component(
  selector: 'desktops',
  templateUrl: 'desktops_component.html',
  styleUrls: const ['desktops_component.css']
)
class DesktopsComponent {
  LightDM _lightDM;
  GreeterService _greeter;

  List<Desktop> desktops;

  DesktopsComponent(this._lightDM, this._greeter) {
    this.desktops = this._lightDM.desktops;
  }

  apply(Desktop desktop) {
    _greeter.desktop = desktop;

    fadeSwitch($('desktops'), $('login'), 'inline-block');
    focus();
  }
}