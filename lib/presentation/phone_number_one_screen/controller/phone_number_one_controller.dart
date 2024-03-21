import 'package:vibra_verve/core/app_export.dart';import 'package:vibra_verve/presentation/phone_number_one_screen/models/phone_number_one_model.dart';import 'package:flutter/material.dart';/// A controller class for the PhoneNumberOneScreen.
///
/// This class manages the state of the PhoneNumberOneScreen, including the
/// current phoneNumberOneModelObj
class PhoneNumberOneController extends GetxController {TextEditingController phoneNumberController = TextEditingController();

Rx<PhoneNumberOneModel> phoneNumberOneModelObj = PhoneNumberOneModel().obs;

@override void onClose() { super.onClose(); phoneNumberController.dispose(); } 
 }
