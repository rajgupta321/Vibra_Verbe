import '../controller/phone_number_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PhoneNumberOneScreen.
///
/// This class ensures that the PhoneNumberOneController is created when the
/// PhoneNumberOneScreen is first loaded.
class PhoneNumberOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PhoneNumberOneController());
  }
}
