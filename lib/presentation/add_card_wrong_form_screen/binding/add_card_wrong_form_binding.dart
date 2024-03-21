import '../controller/add_card_wrong_form_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddCardWrongFormScreen.
///
/// This class ensures that the AddCardWrongFormController is created when the
/// AddCardWrongFormScreen is first loaded.
class AddCardWrongFormBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddCardWrongFormController());
  }
}
