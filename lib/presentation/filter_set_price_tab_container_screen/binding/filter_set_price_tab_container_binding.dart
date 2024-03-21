import '../controller/filter_set_price_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FilterSetPriceTabContainerScreen.
///
/// This class ensures that the FilterSetPriceTabContainerController is created when the
/// FilterSetPriceTabContainerScreen is first loaded.
class FilterSetPriceTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FilterSetPriceTabContainerController());
  }
}
