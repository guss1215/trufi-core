// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'about_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AboutLocalizationsAr extends AboutLocalizations {
  AboutLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get aboutCollapseContent =>
      'جمعية Trufi هي منظمة غير حكومية دولية تعمل على تسهيل الوصول إلى وسائل النقل العام. تساعد تطبيقاتنا الجميع على إيجاد أفضل طريقة للتنقل من النقطة (أ) إلى النقطة (ب) داخل مدنهم.\n\nفي كثير من المدن لا توجد خرائط أو مسارات أو تطبيقات أو جداول زمنية رسمية. لذلك نقوم بجمع المعلومات المتاحة، وأحياناً نرسم المسارات من الصفر بالتعاون مع السكان المحليين الذين يعرفون مدينتهم. إن وجود نظام نقل سهل الاستخدام يسهم في تحقيق استدامة أكبر وهواء أنقى وجودة حياة أفضل.';

  @override
  String get aboutCollapseContentFoot =>
      'نحن بحاجة إلى راسمي خرائط ومطورين ومخططين ومختبرين وأيادٍ كثيرة أخرى.';

  @override
  String get aboutCollapseTitle => 'المزيد عن جمعية Trufi';

  @override
  String aboutContent(String appName, String city) {
    return 'هل تريد الذهاب إلى مكان ما ولا تعرف أي حافلة أو مسار تستقل؟\nيجعل $appName ذلك سهلاً!\n\nجمعية Trufi هي فريق دولي من المتطوعين. نحن نحب وسائل النقل العام، ولهذا طوّرنا هذا التطبيق لجعل التنقل سهلاً. هدفنا هو أن نوفر لك أداة عملية تتيح لك التنقل بثقة.\n\nنحن ملتزمون بالتحسين المستمر لـ $appName لنقدم لك معلومات أكثر دقة وفائدة باستمرار. ندرك أن نظام النقل في $city يشهد تغييرات لأسباب مختلفة، لذا من الممكن ألا تكون بعض المسارات محدّثة بالكامل.\n\nلجعل $appName أداة فعّالة، نعتمد على تعاون مستخدمينا. إذا كنت على علم بتغييرات في بعض المسارات أو المحطات، فنشجعك على مشاركة هذه المعلومات معنا. لن تساعد مساهمتك في إبقاء التطبيق محدّثاً فحسب، بل ستفيد أيضاً المستخدمين الآخرين الذين يعتمدون على $appName.\n\nشكراً لاختيارك $appName للتنقل في $city، نتمنى أن تستمتع بتجربتك معنا!';
  }

  @override
  String get aboutLicenses => 'التراخيص';

  @override
  String get aboutOpenSource =>
      'هذا التطبيق متاح كمصدر مفتوح على GitHub. لا تتردد في المساهمة في الكود، أو في إطلاق تطبيق لمدينتك الخاصة.';

  @override
  String get menuAbout => 'من نحن';

  @override
  String tagline(String city) {
    return 'النقل العام في $city';
  }

  @override
  String get trufiWebsite => 'الموقع الإلكتروني لجمعية Trufi';

  @override
  String version(String version) {
    return 'الإصدار $version';
  }

  @override
  String get volunteerTrufi => 'تطوّع لصالح Trufi';
}
