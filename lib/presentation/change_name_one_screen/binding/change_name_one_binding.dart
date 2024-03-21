import '../controller/change_name_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChangeNameOneScreen.
///
/// This class ensures that the ChangeNameOneController is created when the
/// ChangeNameOneScreen is first loaded.
class ChangeNameOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChangeNameOneController());
  }
}
