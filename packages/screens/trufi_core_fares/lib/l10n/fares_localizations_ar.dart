// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'fares_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class FaresLocalizationsAr extends FaresLocalizations {
  FaresLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get menuFares => 'الأجور';

  @override
  String get faresTitle => 'معلومات الأجور';

  @override
  String get faresSubtitle => 'الأسعار الحالية للنقل العام';

  @override
  String faresLastUpdated(String date) {
    return 'آخر تحديث: $date';
  }

  @override
  String get faresMoreInfo => 'مزيد من المعلومات';
}
