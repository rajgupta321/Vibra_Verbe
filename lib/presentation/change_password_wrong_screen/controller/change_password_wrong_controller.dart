import 'package:vibra_verve/core/app_export.dart';import 'package:vibra_verve/presentation/change_password_wrong_screen/models/change_password_wrong_model.dart';import 'package:flutter/material.dart';/// A controller class for the ChangePasswordWrongScreen.
///
/// This class manages the state of the ChangePasswordWrongScreen, including the
/// current changePasswordWrongModelObj
class ChangePasswordWrongController extends GetxController {TextEditingController passwordController = TextEditingController();

TextEditingController newpasswordController = TextEditingController();

TextEditingController newpasswordController1 = TextEditingController();

Rx<ChangePasswordWrongModel> changePasswordWrongModelObj = ChangePasswordWrongModel().obs;

@override void onClose() { super.onClose(); passwordController.dispose(); newpasswordController.dispose(); newpasswordController1.dispose(); } 
 }
