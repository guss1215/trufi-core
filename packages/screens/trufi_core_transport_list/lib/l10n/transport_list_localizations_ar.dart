// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'transport_list_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class TransportListLocalizationsAr extends TransportListLocalizations {
  TransportListLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get menuTransportList => 'المسارات';

  @override
  String get searchRoutes => 'البحث عن المسارات';

  @override
  String get noRoutesFound => 'لم يتم العثور على مسارات';

  @override
  String get shareRoute => 'مشاركة المسار';

  @override
  String stops(int count) {
    return '$count محطة';
  }

  @override
  String get routeNotFound => 'المسار غير موجود';

  @override
  String get routeLoadError => 'تعذّر تحميل المسار';

  @override
  String get pullDownToRefresh => 'اسحب للأسفل للتحديث';

  @override
  String get tryDifferentSearch => 'جرّب كلمة بحث مختلفة';

  @override
  String get buttonGoBack => 'رجوع';

  @override
  String routeCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count مسارات',
      one: 'مسار واحد',
    );
    return '$_temp0';
  }

  @override
  String get labelDistance => 'المسافة';

  @override
  String get labelStops => 'المحطات';

  @override
  String get labelMode => 'وسيلة النقل';

  @override
  String get noStopsAvailable => 'لا توجد محطات متاحة';

  @override
  String get loadingRoute => 'جارٍ تحميل المسار...';
}
