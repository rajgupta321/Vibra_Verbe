import 'package:vibra_verve/core/app_export.dart';import 'package:vibra_verve/presentation/add_address_one_screen/models/add_address_one_model.dart';import 'package:flutter/material.dart';/// A controller class for the AddAddressOneScreen.
///
/// This class manages the state of the AddAddressOneScreen, including the
/// current addAddressOneModelObj
class AddAddressOneController extends GetxController {TextEditingController firstNameController = TextEditingController();

TextEditingController lastNameController = TextEditingController();

TextEditingController streetaddressController = TextEditingController();

TextEditingController streetaddressController1 = TextEditingController();

Rx<AddAddressOneModel> addAddressOneModelObj = AddAddressOneModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onClose() { super.onClose(); firstNameController.dispose(); lastNameController.dispose(); streetaddressController.dispose(); streetaddressController1.dispose(); } 
onSelected(dynamic value) { for (var element in addAddressOneModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} addAddressOneModelObj.value.dropdownItemList.refresh(); } 
 }
