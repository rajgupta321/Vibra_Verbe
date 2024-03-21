import 'package:vibra_verve/core/app_export.dart';import 'package:vibra_verve/presentation/sign_up_three_screen/models/sign_up_three_model.dart';import 'package:flutter/material.dart';/// A controller class for the SignUpThreeScreen.
///
/// This class manages the state of the SignUpThreeScreen, including the
/// current signUpThreeModelObj
class SignUpThreeController extends GetxController {TextEditingController emailController = TextEditingController();

Rx<SignUpThreeModel> signUpThreeModelObj = SignUpThreeModel().obs;

Rx<bool> isShowPassword = true.obs;

@override void onClose() { super.onClose(); emailController.dispose(); } 
 }
