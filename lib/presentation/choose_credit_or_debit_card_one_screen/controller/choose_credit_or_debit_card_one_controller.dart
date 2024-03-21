import 'package:vibra_verve/core/app_export.dart';import 'package:vibra_verve/presentation/choose_credit_or_debit_card_one_screen/models/choose_credit_or_debit_card_one_model.dart';/// A controller class for the ChooseCreditOrDebitCardOneScreen.
///
/// This class manages the state of the ChooseCreditOrDebitCardOneScreen, including the
/// current chooseCreditOrDebitCardOneModelObj
class ChooseCreditOrDebitCardOneController extends GetxController {Rx<ChooseCreditOrDebitCardOneModel> chooseCreditOrDebitCardOneModelObj = ChooseCreditOrDebitCardOneModel().obs;

Rx<int> sliderIndex = 0.obs;

 }
