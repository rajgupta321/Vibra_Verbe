import 'package:vibra_verve/core/app_export.dart';import 'package:vibra_verve/presentation/change_name_screen/models/change_name_model.dart';import 'package:flutter/material.dart';/// A controller class for the ChangeNameScreen.
///
/// This class manages the state of the ChangeNameScreen, including the
/// current changeNameModelObj
class ChangeNameController extends GetxController {TextEditingController firstNameController = TextEditingController();

TextEditingController lastNameController = TextEditingController();

Rx<ChangeNameModel> changeNameModelObj = ChangeNameModel().obs;

@override void onClose() { super.onClose(); firstNameController.dispose(); lastNameController.dispose(); } 
 }
