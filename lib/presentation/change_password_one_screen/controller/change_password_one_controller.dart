import 'package:vibra_verve/core/app_export.dart';import 'package:vibra_verve/presentation/change_password_one_screen/models/change_password_one_model.dart';import 'package:flutter/material.dart';/// A controller class for the ChangePasswordOneScreen.
///
/// This class manages the state of the ChangePasswordOneScreen, including the
/// current changePasswordOneModelObj
class ChangePasswordOneController extends GetxController {TextEditingController passwordController = TextEditingController();

TextEditingController newpasswordController = TextEditingController();

TextEditingController newpasswordController1 = TextEditingController();

Rx<ChangePasswordOneModel> changePasswordOneModelObj = ChangePasswordOneModel().obs;

@override void onClose() { super.onClose(); passwordController.dispose(); newpasswordController.dispose(); newpasswordController1.dispose(); } 
 }
