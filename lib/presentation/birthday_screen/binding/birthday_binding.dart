import '../controller/birthday_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BirthdayScreen.
///
/// This class ensures that the BirthdayController is created when the
/// BirthdayScreen is first loaded.
class BirthdayBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BirthdayController());
  }
}
