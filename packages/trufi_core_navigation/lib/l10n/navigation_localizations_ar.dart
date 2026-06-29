// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'navigation_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class NavigationLocalizationsAr extends NavigationLocalizations {
  NavigationLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get navExitNavigation => 'إنهاء الملاحة';

  @override
  String get navExitConfirmTitle => 'إنهاء الملاحة؟';

  @override
  String get navExitConfirmMessage =>
      'هل أنت متأكد من رغبتك في إيقاف الملاحة على هذا المسار؟';

  @override
  String get navCancel => 'إلغاء';

  @override
  String get navExit => 'إنهاء';

  @override
  String get navClose => 'إغلاق';

  @override
  String get navRetry => 'إعادة المحاولة';

  @override
  String get navSettings => 'الإعدادات';

  @override
  String get navArrived => 'لقد وصلت!';

  @override
  String get navOffRoute => 'يبدو أنك خارج المسار';

  @override
  String get navWeakGps => 'إشارة نظام تحديد المواقع (GPS) ضعيفة';

  @override
  String get navNext => 'التالي: ';

  @override
  String get navError => 'حدث خطأ';

  @override
  String get navStarting => 'جارٍ بدء الملاحة...';

  @override
  String get navGettingLocation => 'جارٍ تحديد موقعك';

  @override
  String get navCouldNotStartTracking => 'تعذّر بدء تتبّع الموقع';

  @override
  String get navArrivedShort => 'لقد وصلت';

  @override
  String get navOneStop => 'محطة واحدة';

  @override
  String navStops(int count) {
    return '$count محطة';
  }

  @override
  String navExitAt(String stopName) {
    return 'انزل عند $stopName';
  }

  @override
  String get navFinalDestination => 'الوجهة النهائية';

  @override
  String get navPermissionDenied => 'تم رفض إذن الوصول إلى الموقع';

  @override
  String get navPermissionPermanentlyDenied =>
      'تم رفض إذن الوصول إلى الموقع نهائيًا. يُرجى تفعيله من الإعدادات.';

  @override
  String get navLocationDisabled => 'خدمات الموقع معطّلة. يُرجى تفعيلها.';

  @override
  String get navOrigin => 'نقطة الانطلاق';

  @override
  String get navTransfer => 'نقطة التبديل';

  @override
  String get navDestination => 'الوجهة';
}
