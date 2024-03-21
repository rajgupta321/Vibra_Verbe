import '../controller/short_by_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ShortByScreen.
///
/// This class ensures that the ShortByController is created when the
/// ShortByScreen is first loaded.
class ShortByBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ShortByController());
  }
}
