import 'package:vibra_verve/core/app_export.dart';import 'package:vibra_verve/presentation/add_card_wrong_form_screen/models/add_card_wrong_form_model.dart';import 'package:flutter/material.dart';/// A controller class for the AddCardWrongFormScreen.
///
/// This class manages the state of the AddCardWrongFormScreen, including the
/// current addCardWrongFormModelObj
class AddCardWrongFormController extends GetxController {TextEditingController cardNumberController = TextEditingController();

TextEditingController securityCodeController = TextEditingController();

TextEditingController cardHolderController = TextEditingController();

Rx<AddCardWrongFormModel> addCardWrongFormModelObj = AddCardWrongFormModel().obs;

@override void onClose() { super.onClose(); cardNumberController.dispose(); securityCodeController.dispose(); cardHolderController.dispose(); } 
 }
