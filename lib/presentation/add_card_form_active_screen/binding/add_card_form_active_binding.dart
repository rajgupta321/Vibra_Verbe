import '../controller/add_card_form_active_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddCardFormActiveScreen.
///
/// This class ensures that the AddCardFormActiveController is created when the
/// AddCardFormActiveScreen is first loaded.
class AddCardFormActiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddCardFormActiveController());
  }
}
