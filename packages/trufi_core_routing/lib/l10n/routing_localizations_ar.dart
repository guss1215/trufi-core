// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'routing_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class RoutingLocalizationsAr extends RoutingLocalizations {
  RoutingLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get prefsWalkingSpeed => 'سرعة المشي';

  @override
  String get prefsSpeedSlow => 'بطيئة';

  @override
  String get prefsSpeedNormal => 'عادية';

  @override
  String get prefsSpeedFast => 'سريعة';

  @override
  String get prefsMaxWalkDistance => 'أقصى مسافة للمشي';

  @override
  String get prefsNoLimit => 'بلا حد';

  @override
  String get prefsTransportModes => 'وسائل النقل';

  @override
  String get prefsModeTransit => 'النقل العام';

  @override
  String get prefsModeWalk => 'المشي';

  @override
  String get prefsModeBicycle => 'الدراجة الهوائية';

  @override
  String get prefsWheelchairAccessible => 'مهيأ لذوي الكراسي المتحركة';

  @override
  String get prefsWheelchairOn => 'تتجنب المسارات الدرَج والمنحدرات الشديدة';

  @override
  String get prefsWheelchairOff => 'تضمين جميع المسارات';

  @override
  String serviceActiveClosesAt(String time) {
    return 'نشط · يُغلق في $time';
  }

  @override
  String serviceClosedOpensAt(String time) {
    return 'مغلق · يفتح في $time';
  }

  @override
  String serviceClosedOpensDayAt(String day, String time) {
    return 'مغلق · يفتح $day في $time';
  }

  @override
  String get serviceClosed => 'مغلق';

  @override
  String get serviceTomorrow => 'غدًا';
}
