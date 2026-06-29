// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'saved_places_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class SavedPlacesLocalizationsAr extends SavedPlacesLocalizations {
  SavedPlacesLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get menuSavedPlaces => 'أماكنك';

  @override
  String get yourPlaces => 'أماكنك';

  @override
  String get home => 'المنزل';

  @override
  String get work => 'العمل';

  @override
  String get favorites => 'المفضلة';

  @override
  String get customPlaces => 'المفضلة';

  @override
  String get recentPlaces => 'الأخيرة';

  @override
  String get defaultPlaces => 'الأماكن الافتراضية';

  @override
  String get setHome => 'تعيين عنوان المنزل';

  @override
  String get setWork => 'تعيين عنوان العمل';

  @override
  String get editPlace => 'تعديل المكان';

  @override
  String get removePlace => 'إزالة المكان';

  @override
  String removePlaceConfirmation(String placeName) {
    return 'هل أنت متأكد من أنك تريد إزالة $placeName؟';
  }

  @override
  String get cancel => 'إلغاء';

  @override
  String get remove => 'إزالة';

  @override
  String get save => 'حفظ';

  @override
  String get name => 'الاسم';

  @override
  String get enterName => 'أدخل الاسم';

  @override
  String get nameRequired => 'الاسم مطلوب';

  @override
  String get selectIcon => 'اختر أيقونة';

  @override
  String get clearHistory => 'مسح';

  @override
  String get noPlacesSaved => 'لا توجد أماكن محفوظة بعد';

  @override
  String get addPlace => 'إضافة مكان';

  @override
  String get chooseOnMap => 'اختر على الخريطة';

  @override
  String get searchLocation => 'البحث عن موقع';

  @override
  String get type => 'النوع';

  @override
  String get location => 'الموقع';

  @override
  String get noLocationSelected => 'لم يتم تحديد موقع';

  @override
  String get locationRequired => 'الموقع مطلوب';

  @override
  String get locationSelected => 'تم تحديد الموقع';

  @override
  String get tapToSelectLocation => 'انقر للتحديد على الخريطة';

  @override
  String get change => 'تغيير';
}
