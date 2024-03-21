import '../controller/change_password_wrong_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChangePasswordWrongScreen.
///
/// This class ensures that the ChangePasswordWrongController is created when the
/// ChangePasswordWrongScreen is first loaded.
class ChangePasswordWrongBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChangePasswordWrongController());
  }
}
