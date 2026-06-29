// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'feedback_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class FeedbackLocalizationsAr extends FeedbackLocalizations {
  FeedbackLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get menuFeedback => 'الملاحظات';

  @override
  String get feedbackTitle => 'يسعدنا أن نسمع منك!';

  @override
  String get feedbackContent =>
      'تساعدنا ملاحظاتك على تحسين التطبيق وتوفير معلومات أفضل عن النقل العام للجميع في المدينة.';

  @override
  String get feedbackWhatWeWant => 'ما الذي يسعدنا معرفته';

  @override
  String get feedbackBugs => 'الأعطال أو المشكلات التي واجهتها';

  @override
  String get feedbackRoutes => 'تغييرات المسارات أو المحطات المفقودة';

  @override
  String get feedbackSuggestions => 'أفكار لتحسين التطبيق';

  @override
  String get feedbackSend => 'إرسال الملاحظات';

  @override
  String get feedbackSubtitle => 'صوتك يهمنا';
}
