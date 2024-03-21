import '../controller/thirteen_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ThirteenScreen.
///
/// This class ensures that the ThirteenController is created when the
/// ThirteenScreen is first loaded.
class ThirteenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ThirteenController());
  }
}
