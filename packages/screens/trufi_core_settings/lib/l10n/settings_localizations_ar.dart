// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'settings_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class SettingsLocalizationsAr extends SettingsLocalizations {
  SettingsLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get onboardingTitle => 'مرحباً بك!';

  @override
  String get onboardingSubtitle => 'لنقم بإعداد تفضيلاتك';

  @override
  String get onboardingLanguageTitle => 'اختر لغتك';

  @override
  String get onboardingThemeTitle => 'اختر المظهر';

  @override
  String get onboardingThemeLight => 'فاتح';

  @override
  String get onboardingThemeDark => 'داكن';

  @override
  String get onboardingThemeSystem => 'النظام';

  @override
  String get onboardingMapTitle => 'اختر نمط الخريطة';

  @override
  String get onboardingRoutingTitle => 'اختر محرك تحديد المسارات';

  @override
  String get onboardingComplete => 'ابدأ الآن';

  @override
  String get privacyConsentTitle => 'ساعد في تحسين التطبيق';

  @override
  String get privacyConsentSubtitle =>
      'ساعدنا في تحسين التطبيق من خلال مشاركة بيانات استخدام مجهولة المصدر';

  @override
  String get privacyConsentInfoTitle => 'ما الذي نجمعه';

  @override
  String get privacyConsentInfoLogs =>
      'سجلات الأخطاء لمساعدتنا في إصلاح العلل والأعطال';

  @override
  String get privacyConsentInfoRoutes =>
      'عمليات البحث عن المسارات لتحسين جودة بيانات النقل العام';

  @override
  String get privacyConsentInfoAnonymous =>
      'جميع البيانات مجهولة المصدر تماماً';

  @override
  String get privacyConsentAccept => 'موافقة ومتابعة';

  @override
  String get privacyConsentDecline => 'لا، شكراً';

  @override
  String get settingsTitle => 'الإعدادات';

  @override
  String get settingsLanguage => 'اللغة';

  @override
  String get settingsSelectLanguage => 'اختر لغتك المفضلة:';

  @override
  String get settingsTheme => 'المظهر';

  @override
  String get settingsSelectTheme => 'اختر مظهرك المفضل:';

  @override
  String get settingsThemeLight => 'الوضع الفاتح';

  @override
  String get settingsThemeDark => 'الوضع الداكن';

  @override
  String get settingsThemeSystem => 'الوضع الافتراضي للنظام';

  @override
  String get settingsMap => 'الخريطة';

  @override
  String get settingsSelectMapType => 'اختر نوع الخريطة المفضل لديك:';

  @override
  String get settingsRouting => 'تحديد المسارات';

  @override
  String get settingsSelectRoutingEngine =>
      'اختر محرك تحديد المسارات المفضل لديك:';

  @override
  String get settingsPrivacy => 'الخصوصية';

  @override
  String get settingsPrivacySubtitle => 'ساعد في تحسين التطبيق';

  @override
  String get settingsPrivacyShareData => 'مشاركة بيانات استخدام مجهولة المصدر';

  @override
  String get settingsPrivacyShareDataDescription =>
      'ساعدنا في إصلاح العلل وتحسين بيانات النقل العام';

  @override
  String get engineOnlineName => 'متصل بالإنترنت';

  @override
  String get engineOnlineDescription =>
      'OpenTripPlanner 2.8. تحديد المسارات في الوقت الفعلي مع إرشادات مشي مفصلة.';

  @override
  String get engineOfflineName => 'غير متصل بالإنترنت';

  @override
  String get engineOfflineDescription =>
      'تحديد المسارات استناداً إلى GTFS. يعمل بدون إنترنت.';

  @override
  String get limitationRequiresInternet => 'يتطلب اتصالاً بالإنترنت';

  @override
  String get limitationSlower => 'استجابة أبطأ';

  @override
  String get limitationNoWalkingRoute => 'لا يعرض مسار المشي على الخريطة';
}
