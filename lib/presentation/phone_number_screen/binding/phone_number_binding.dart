import '../controller/phone_number_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PhoneNumberScreen.
///
/// This class ensures that the PhoneNumberController is created when the
/// PhoneNumberScreen is first loaded.
class PhoneNumberBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PhoneNumberController());
  }
}
