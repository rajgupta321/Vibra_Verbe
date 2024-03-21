import '../controller/sign_up_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignUpOneScreen.
///
/// This class ensures that the SignUpOneController is created when the
/// SignUpOneScreen is first loaded.
class SignUpOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpOneController());
  }
}
