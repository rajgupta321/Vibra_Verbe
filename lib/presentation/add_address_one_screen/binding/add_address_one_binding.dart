import '../controller/add_address_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddAddressOneScreen.
///
/// This class ensures that the AddAddressOneController is created when the
/// AddAddressOneScreen is first loaded.
class AddAddressOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddAddressOneController());
  }
}
