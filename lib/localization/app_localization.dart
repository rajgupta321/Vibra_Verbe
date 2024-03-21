import 'package:get/get.dart';
import 'en_us/en_us_translations.dart';
import 'hi_in/hi_in_translations.dart';
import 'ne_np/ne_np_translations.dart';
import 'kn_in/kn_in_translations.dart';

class AppLocalization extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': enUs,
    'hi_IN': hiIn,
    'ne_NP': neNp,
    'kn_IN': knIn,
  };
}
