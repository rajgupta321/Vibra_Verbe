import 'package:vibra_verve/core/app_export.dart';import 'package:vibra_verve/presentation/gender_choose_screen/models/gender_choose_model.dart';/// A controller class for the GenderChooseScreen.
///
/// This class manages the state of the GenderChooseScreen, including the
/// current genderChooseModelObj
class GenderChooseController extends GetxController {Rx<LanguageChooseModel> genderChooseModelObj = LanguageChooseModel().obs;

SelectionPopupModel? selectedDropDownValue;

onSelected(dynamic value) { for (var element in genderChooseModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} genderChooseModelObj.value.dropdownItemList.refresh(); } 
 }
