import 'package:vibra_verve/core/app_export.dart';import 'package:vibra_verve/presentation/sign_up_two_screen/models/sign_up_two_model.dart';import 'package:flutter/material.dart';/// A controller class for the SignUpTwoScreen.
///
/// This class manages the state of the SignUpTwoScreen, including the
/// current signUpTwoModelObj
class SignUpTwoController extends GetxController {TextEditingController newpasswordController = TextEditingController();

TextEditingController newpasswordController1 = TextEditingController();

Rx<SignUpTwoModel> signUpTwoModelObj = SignUpTwoModel().obs;

Rx<bool> isShowPassword = true.obs;

@override void onClose() { super.onClose(); newpasswordController.dispose(); newpasswordController1.dispose(); } 
 }
