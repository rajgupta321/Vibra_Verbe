import 'package:vibra_verve/core/app_export.dart';import 'package:vibra_verve/presentation/add_address_screen/models/add_address_model.dart';import 'package:flutter/material.dart';/// A controller class for the AddAddressScreen.
///
/// This class manages the state of the AddAddressScreen, including the
/// current addAddressModelObj
class AddAddressController extends GetxController {TextEditingController firstNameController = TextEditingController();

TextEditingController lastNameController = TextEditingController();

TextEditingController streetaddressController = TextEditingController();

TextEditingController streetaddressController1 = TextEditingController();

TextEditingController cityController = TextEditingController();

TextEditingController stateProvinceRegionController = TextEditingController();

TextEditingController zipcodeController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

Rx<AddAddressModel> addAddressModelObj = AddAddressModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onClose() { super.onClose(); firstNameController.dispose(); lastNameController.dispose(); streetaddressController.dispose(); streetaddressController1.dispose(); cityController.dispose(); stateProvinceRegionController.dispose(); zipcodeController.dispose(); phoneNumberController.dispose(); } 
onSelected(dynamic value) { for (var element in addAddressModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} addAddressModelObj.value.dropdownItemList.refresh(); } 
 }
