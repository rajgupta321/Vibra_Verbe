import '../controller/sign_up_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignUpThreeScreen.
///
/// This class ensures that the SignUpThreeController is created when the
/// SignUpThreeScreen is first loaded.
class SignUpThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpThreeController());
  }
}
