import '../controller/change_name_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChangeNameScreen.
///
/// This class ensures that the ChangeNameController is created when the
/// ChangeNameScreen is first loaded.
class ChangeNameBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChangeNameController());
  }
}
