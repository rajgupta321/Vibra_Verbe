import '../controller/choose_credit_or_debit_card_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChooseCreditOrDebitCardOneScreen.
///
/// This class ensures that the ChooseCreditOrDebitCardOneController is created when the
/// ChooseCreditOrDebitCardOneScreen is first loaded.
class ChooseCreditOrDebitCardOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChooseCreditOrDebitCardOneController());
  }
}
