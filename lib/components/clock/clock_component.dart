import 'dart:async';
import 'package:angular2/core.dart';

@Component(
  selector: 'clock',
  templateUrl: 'clock_component.html',
  styleUrls: const ['clock_component.css']
)
class ClockComponent implements OnInit {
  static const DAYS = const ['Lundi', 'Mardi', 'Mercredi', 'Jeudi', 'Vendredi', 'Samedi', 'Dimanche'];
  static const MONTHS = const ['Janvier', 'Février', 'Mars', 'Avril', 'Mai', 'Juin', 'Juillet', 'Août', 'Septembre', 'Octobre', 'Novembre', 'Decembre'];

  String hours = '00';
  String minutes = '00';

  String weekday = DAYS[0];
  String day = '1';
  String month = MONTHS[0];
  String year = '1970';

  @override
  ngOnInit() {
    new Timer.periodic(const Duration(milliseconds: 1000), (_) {
      var date = new DateTime.now();

      hours = date.hour.toString().padLeft(2, '0');
      minutes = date.minute.toString().padLeft(2, '0');

      weekday = DAYS[date.weekday - 1];
      day = date.day.toString();
      month = MONTHS[date.month - 1];
      year = date.year.toString();
    });
  }
}

