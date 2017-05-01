import 'dart:async';
import 'package:angular2/core.dart';
import 'package:lightdm_webkit_theme_litarvan/translations.dart';

@Component(
  selector: 'clock',
  templateUrl: 'clock_component.html',
  styleUrls: const ['clock_component.css']
)
class ClockComponent implements OnInit {
  Translations _trans;

  String hours = '00';
  String minutes = '00';

  String date = '';

  ClockComponent(this._trans);

  @override
  ngOnInit() {
    new Timer.periodic(const Duration(milliseconds: 1000), (_) {
      var date = new DateTime.now();

      hours = date.hour.toString().padLeft(2, '0');
      minutes = date.minute.toString().padLeft(2, '0');

      this.date = (_trans['date'] as String)
          .replaceAll('day', date.day.toString())
          .replaceAll('weekd', _trans['days'][date.weekday - 1])
          .replaceAll('month', _trans['months'][date.month - 1])
          .replaceAll('year', date.year.toString());
    });
  }
}

