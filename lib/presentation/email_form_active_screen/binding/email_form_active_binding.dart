import '../controller/email_form_active_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EmailFormActiveScreen.
///
/// This class ensures that the EmailFormActiveController is created when the
/// EmailFormActiveScreen is first loaded.
class EmailFormActiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EmailFormActiveController());
  }
}
