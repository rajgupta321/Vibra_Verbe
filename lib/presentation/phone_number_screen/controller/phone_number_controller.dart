import 'package:vibra_verve/core/app_export.dart';import 'package:vibra_verve/presentation/phone_number_screen/models/phone_number_model.dart';import 'package:flutter/material.dart';/// A controller class for the PhoneNumberScreen.
///
/// This class manages the state of the PhoneNumberScreen, including the
/// current phoneNumberModelObj
class PhoneNumberController extends GetxController {TextEditingController phoneNumberController = TextEditingController();

Rx<PhoneNumberModel> phoneNumberModelObj = PhoneNumberModel().obs;

@override void onClose() { super.onClose(); phoneNumberController.dispose(); } 
 }
