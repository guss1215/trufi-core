// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'home_screen_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class HomeScreenLocalizationsAr extends HomeScreenLocalizations {
  HomeScreenLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get menuHome => 'الرئيسية';

  @override
  String get searchOrigin => 'اختر نقطة الانطلاق';

  @override
  String get searchDestination => 'اختر الوجهة';

  @override
  String get selectLocations =>
      'اختر نقطة الانطلاق والوجهة للعثور على المسارات';

  @override
  String get noRoutesFound =>
      'لم يتم العثور على مسارات نقل عام لهذه الرحلة. قد يعود ذلك إلى الوقت المحدد أو عدم وجود تغطية بين هاتين النقطتين. جرّب وقتاً أو وجهة مختلفة.';

  @override
  String get noRoutesFoundShort => 'لم يتم العثور على مسارات لهذه الرحلة';

  @override
  String get errorNoRoutes => 'حدث خطأ أثناء تحميل المسارات';

  @override
  String get originDestinationTooClose =>
      'أنت قريب جداً من وجهتك. المشي هو الخيار الأسرع.';

  @override
  String durationMinutes(int minutes) {
    return '$minutes دقيقة';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours س $minutes د';
  }

  @override
  String distanceMeters(int meters) {
    return '$meters م';
  }

  @override
  String distanceKilometers(String km) {
    return '$km كم';
  }

  @override
  String get walk => 'مشي';

  @override
  String transfers(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count تبديل',
      many: '$count تبديلاً',
      few: '$count تبديلات',
      two: 'تبديلان',
      one: 'تبديل واحد',
      zero: 'بدون تبديل',
    );
    return '$_temp0';
  }

  @override
  String departureAt(String time) {
    return 'المغادرة في $time';
  }

  @override
  String arrivalAt(String time) {
    return 'الوصول في $time';
  }

  @override
  String get yourLocation => 'موقعك الحالي';

  @override
  String get chooseOnMap => 'اختر على الخريطة';

  @override
  String get confirmLocation => 'تأكيد الموقع';

  @override
  String get selectedLocation => 'الموقع المحدد';

  @override
  String get setAsOrigin => 'تعيين كنقطة انطلاق';

  @override
  String get setAsDestination => 'تعيين كوجهة';

  @override
  String get shareRoute => 'مشاركة المسار';

  @override
  String shareRouteTitle(String appName) {
    return '$appName - مسار مشترَك';
  }

  @override
  String shareRouteOrigin(String location) {
    return 'نقطة الانطلاق: $location';
  }

  @override
  String shareRouteDestination(String location) {
    return 'الوجهة: $location';
  }

  @override
  String shareRouteDate(String date) {
    return 'التاريخ: $date';
  }

  @override
  String shareRouteTimes(String departure, String arrival) {
    return 'المغادرة: $departure ← الوصول: $arrival';
  }

  @override
  String shareRouteDuration(String duration) {
    return 'المدة: $duration';
  }

  @override
  String shareRouteItinerary(String summary) {
    return 'المسار: $summary';
  }

  @override
  String get shareRouteOpenInApp => 'افتح في التطبيق:';

  @override
  String get tripDetails => 'تفاصيل الرحلة';

  @override
  String get departure => 'المغادرة';

  @override
  String get arrival => 'الوصول';

  @override
  String get totalDistance => 'المسافة';

  @override
  String get walking => 'المشي';

  @override
  String get tripSteps => 'خطوات الرحلة';

  @override
  String get towards => 'باتجاه';

  @override
  String get stops => 'محطات';

  @override
  String get bike => 'دراجة';

  @override
  String get train => 'قطار';

  @override
  String get transfersLabel => 'التبديلات';

  @override
  String operatedBy(String agency) {
    return 'تُشغّلها $agency';
  }

  @override
  String get viewFares => 'عرض الأجور';

  @override
  String co2Emissions(String grams) {
    return '$grams غ ثاني أكسيد الكربون';
  }

  @override
  String get locationPermissionTitle => 'إذن الموقع';

  @override
  String get locationPermissionDeniedMessage =>
      'تم رفض إذن الموقع نهائياً. يُرجى تفعيله من إعدادات جهازك لاستخدام هذه الميزة.';

  @override
  String get locationDisabledTitle => 'خدمة الموقع معطّلة';

  @override
  String get locationDisabledMessage =>
      'خدمات الموقع معطّلة على جهازك. يُرجى تفعيلها لاستخدام هذه الميزة.';

  @override
  String get buttonCancel => 'إلغاء';

  @override
  String get buttonOpenSettings => 'فتح الإعدادات';

  @override
  String get buttonApply => 'تطبيق';

  @override
  String get searchForRoute => 'ابحث عن مسار';

  @override
  String get searchForRouteHint =>
      'أدخل نقطة الانطلاق والوجهة للعثور على المسارات';

  @override
  String get tooltipShare => 'مشاركة';

  @override
  String get tooltipClose => 'إغلاق';

  @override
  String get leaveNow => 'المغادرة الآن';

  @override
  String get departAt => 'المغادرة في...';

  @override
  String departAtTime(String time) {
    return 'المغادرة $time';
  }

  @override
  String get arriveBy => 'الوصول بحلول...';

  @override
  String arriveByTime(String time) {
    return 'الوصول بحلول $time';
  }

  @override
  String get today => 'اليوم';

  @override
  String get tomorrow => 'غداً';

  @override
  String tomorrowWithTime(String time) {
    return 'غداً $time';
  }

  @override
  String get whenDoYouWantToTravel => 'متى تريد السفر؟';

  @override
  String routesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'تم العثور على $count مسار',
      many: 'تم العثور على $count مساراً',
      few: 'تم العثور على $count مسارات',
      two: 'تم العثور على مسارين',
      one: 'تم العثور على مسار واحد',
    );
    return '$_temp0';
  }

  @override
  String get monthJan => 'يناير';

  @override
  String get monthFeb => 'فبراير';

  @override
  String get monthMar => 'مارس';

  @override
  String get monthApr => 'أبريل';

  @override
  String get monthMay => 'مايو';

  @override
  String get monthJun => 'يونيو';

  @override
  String get monthJul => 'يوليو';

  @override
  String get monthAug => 'أغسطس';

  @override
  String get monthSep => 'سبتمبر';

  @override
  String get monthOct => 'أكتوبر';

  @override
  String get monthNov => 'نوفمبر';

  @override
  String get monthDec => 'ديسمبر';

  @override
  String get buttonGo => 'انطلق';

  @override
  String get buttonDetails => 'التفاصيل';

  @override
  String get buttonTryAgain => 'حاول مرة أخرى';

  @override
  String get buttonReset => 'إعادة تعيين';

  @override
  String get routeSettings => 'إعدادات المسار';

  @override
  String get wheelchairAccessible => 'مهيّأ للكراسي المتحركة';

  @override
  String get wheelchairAccessibleOn =>
      'المسارات تتجنّب الدرَج والمنحدرات الحادة';

  @override
  String get wheelchairAccessibleOff => 'تضمين جميع المسارات';

  @override
  String get walkingSpeed => 'سرعة المشي';

  @override
  String get speedSlow => 'بطيئة';

  @override
  String get speedNormal => 'عادية';

  @override
  String get speedFast => 'سريعة';

  @override
  String get maxWalkDistance => 'أقصى مسافة مشي';

  @override
  String get noLimit => 'بلا حد';

  @override
  String get transportModes => 'وسائل النقل';

  @override
  String get modeTransit => 'النقل العام';

  @override
  String get modeBicycle => 'دراجة هوائية';

  @override
  String get exitNavigation => 'إنهاء التوجيه';

  @override
  String get exitNavigationTitle => 'إنهاء التوجيه؟';

  @override
  String get exitNavigationMessage =>
      'هل أنت متأكد من رغبتك في التوقف عن توجيه هذا المسار؟';

  @override
  String get buttonExit => 'خروج';

  @override
  String get arrivedMessage => 'لقد وصلت!';

  @override
  String get buttonRetry => 'إعادة المحاولة';

  @override
  String get buttonSettings => 'الإعدادات';

  @override
  String get findingRoutes => 'جارٍ البحث عن المسارات...';

  @override
  String moreDepartures(int count) {
    return '+$count أخرى';
  }

  @override
  String get otherDepartures => 'مواعيد مغادرة أخرى';

  @override
  String departsAt(String time) {
    return 'المغادرة $time';
  }

  @override
  String get routingProvider => 'مزوّد توجيه المسارات';

  @override
  String get autoFallback => 'التبديل التلقائي';

  @override
  String get autoFallbackDescription =>
      'جرّب الاتصال أولاً، واستخدم وضع عدم الاتصال إذا فشل';

  @override
  String get engineOnlineName => 'متصل بالإنترنت';

  @override
  String get engineOnlineDescription =>
      'OpenTripPlanner 2.8. توجيه فوري مع إرشادات مشي مفصّلة.';

  @override
  String get engineOfflineName => 'بدون اتصال';

  @override
  String get engineOfflineDescription =>
      'توجيه يعتمد على GTFS. يعمل دون اتصال بالإنترنت.';

  @override
  String get limitationRequiresInternet => 'يتطلب اتصالاً بالإنترنت';

  @override
  String get limitationSlower => 'استجابة أبطأ';

  @override
  String get limitationNoWalkingRoute => 'لا يظهر مسار المشي على الخريطة';

  @override
  String get estimatedTimesDisclaimer =>
      'أوقات السفر تقديرية وقد تتغيّر بسبب حركة المرور';

  @override
  String get liveVehiclesTitle => 'الحافلات المباشرة';

  @override
  String get liveVehiclesSubtitle =>
      'إظهار الموقع المباشر للحافلات على الخريطة';

  @override
  String get liveVehiclesEnable => 'تفعيل';

  @override
  String get liveVehiclesStateOn => 'مُفعّل';

  @override
  String get liveVehiclesStateOff => 'مُعطّل';
}
