import '../controller/gender_choose_controller.dart';
import 'package:get/get.dart';

/// A binding class for the GenderChooseScreen.
///
/// This class ensures that the GenderChooseController is created when the
/// GenderChooseScreen is first loaded.
class GenderChooseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GenderChooseController());
  }
}
