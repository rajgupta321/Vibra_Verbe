import 'package:vibra_verve/core/app_export.dart';import 'package:vibra_verve/presentation/add_card_form_active_screen/models/add_card_form_active_model.dart';import 'package:flutter/material.dart';/// A controller class for the AddCardFormActiveScreen.
///
/// This class manages the state of the AddCardFormActiveScreen, including the
/// current addCardFormActiveModelObj
class AddCardFormActiveController extends GetxController {TextEditingController cardNumberController = TextEditingController();

TextEditingController securityCodeController = TextEditingController();

TextEditingController cardHoldervalueController = TextEditingController();

Rx<AddCardFormActiveModel> addCardFormActiveModelObj = AddCardFormActiveModel().obs;

@override void onClose() { super.onClose(); cardNumberController.dispose(); securityCodeController.dispose(); cardHoldervalueController.dispose(); } 
 }
