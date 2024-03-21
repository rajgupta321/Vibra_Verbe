import '../controller/home_controller.dart';
import 'package:get/get.dart';

/// A binding class for the Login1Screen.
///
/// This class ensures that the Login1Controller is created when the
/// Login1Screen is first loaded.
class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
