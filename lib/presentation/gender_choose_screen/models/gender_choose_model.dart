import 'package:vibra_verve/data/models/selectionPopupModel/selection_popup_model.dart';
import '../../../core/app_export.dart';
/// This class defines the variables used in the [gender_choose_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class LanguageChooseModel {
 Rx<List<SelectionPopupModel>>
 dropdownItemList = Rx(
     [SelectionPopupModel(
      id:1,title:"Male",isSelected:true,),
      SelectionPopupModel(id:2,title:"Female",),
      SelectionPopupModel(id:3,title:"Other",)]);

 }
