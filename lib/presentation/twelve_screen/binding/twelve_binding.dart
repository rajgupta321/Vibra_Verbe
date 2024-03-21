import '../controller/twelve_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TwelveScreen.
///
/// This class ensures that the TwelveController is created when the
/// TwelveScreen is first loaded.
class TwelveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TwelveController());
  }
}
