import '../controller/language_choose_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LanguageChooseScreen.
///
/// This class ensures that the LanguageChooseController is created when the
/// LanguageChooseScreen is first loaded.
class LanguageChooseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LanguageChooseController());
  }
}
