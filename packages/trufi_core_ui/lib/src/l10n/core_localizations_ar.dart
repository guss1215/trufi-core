// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'core_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class CoreLocalizationsAr extends CoreLocalizations {
  CoreLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appName => 'تطبيق Trufi';

  @override
  String get appLoading => 'جارٍ التحميل...';

  @override
  String get navHome => 'الرئيسية';

  @override
  String get navSearch => 'البحث';

  @override
  String get navFeedback => 'ملاحظات';

  @override
  String get navSettings => 'الإعدادات';

  @override
  String get navAbout => 'حول التطبيق';

  @override
  String get actionSave => 'حفظ';

  @override
  String get actionCancel => 'إلغاء';

  @override
  String get actionConfirm => 'تأكيد';

  @override
  String get errorGeneric => 'حدث خطأ';

  @override
  String get errorNetwork => 'خطأ في الشبكة. يرجى التحقق من اتصالك.';

  @override
  String get errorInitialization => 'فشل في تهيئة التطبيق';

  @override
  String get actionRetry => 'إعادة المحاولة';

  @override
  String get errorPageNotFound => 'الصفحة غير موجودة';

  @override
  String get actionGoHome => 'الذهاب إلى الرئيسية';

  @override
  String get titleError => 'خطأ';

  @override
  String unreadCount(int count) {
    return '$count غير مقروءة';
  }

  @override
  String get markAllAsRead => 'تحديد الكل كمقروء';
}
