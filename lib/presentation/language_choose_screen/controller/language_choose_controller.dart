import 'package:vibra_verve/core/app_export.dart';
import 'package:vibra_verve/presentation/language_choose_screen/models/language_choose_model.dart';
/// A controller class for the LanguageChooseScreen.
///
/// This class manages the state of the LanguageChooseScreen, including the
/// current languageChooseModelObj
class LanguageChooseController extends GetxController {
 Rx<LanguageChooseModel> languageChooseModelObj = LanguageChooseModel().obs;
}
