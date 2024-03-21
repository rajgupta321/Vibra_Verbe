import 'package:vibra_verve/core/app_export.dart';import 'package:vibra_verve/presentation/add_card_screen/models/add_card_model.dart';import 'package:flutter/material.dart';/// A controller class for the AddCardScreen.
///
/// This class manages the state of the AddCardScreen, including the
/// current addCardModelObj
class AddCardController extends GetxController {TextEditingController cardNumberController = TextEditingController();

TextEditingController securityCodeController = TextEditingController();

TextEditingController cardNumberController1 = TextEditingController();

Rx<AddCardModel> addCardModelObj = AddCardModel().obs;

@override void onClose() { super.onClose(); cardNumberController.dispose(); securityCodeController.dispose(); cardNumberController1.dispose(); } 
 }
