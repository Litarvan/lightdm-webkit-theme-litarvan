import 'dart:async';
import 'package:angular2/core.dart';
import 'package:lightdm_webkit_theme_litarvan/lightdm.dart';
import 'package:lightdm_webkit_theme_litarvan/util.dart';

@Component(
  selector: 'power-button',
  templateUrl: 'power_button_component.html',
  styleUrls: const ['power_button_component.css']
)
class PowerButtonComponent {
  final LightDM _lightdm;

  PowerButtonComponent(this._lightdm);

  @Input()
  String image = '/images/shutdown.svg';

  @Input()
  String type = 'shutdown';

  apply() {
    shutdown();

    new Future.delayed(const Duration(milliseconds: 500), () {
      switch (type) {
        case 'shutdown':
          _lightdm.shutdown();
          break;
        case 'reboot':
          _lightdm.reboot();
          break;
      }
    });
  }
}