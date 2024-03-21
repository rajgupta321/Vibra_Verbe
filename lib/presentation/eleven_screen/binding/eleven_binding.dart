import '../controller/eleven_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ElevenScreen.
///
/// This class ensures that the ElevenController is created when the
/// ElevenScreen is first loaded.
class ElevenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ElevenController());
  }
}
