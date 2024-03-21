import '../controller/email_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EmailScreen.
///
/// This class ensures that the EmailController is created when the
/// EmailScreen is first loaded.
class EmailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EmailController());
  }
}
