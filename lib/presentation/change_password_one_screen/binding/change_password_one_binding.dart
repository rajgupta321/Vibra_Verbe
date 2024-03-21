import '../controller/change_password_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChangePasswordOneScreen.
///
/// This class ensures that the ChangePasswordOneController is created when the
/// ChangePasswordOneScreen is first loaded.
class ChangePasswordOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChangePasswordOneController());
  }
}
