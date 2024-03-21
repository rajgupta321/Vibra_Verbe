import '../controller/birthday_choose_date_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BirthdayChooseDateScreen.
///
/// This class ensures that the BirthdayChooseDateController is created when the
/// BirthdayChooseDateScreen is first loaded.
class BirthdayChooseDateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BirthdayChooseDateController());
  }
}
