import 'package:vibra_verve/core/app_export.dart';import 'package:vibra_verve/presentation/change_name_one_screen/models/change_name_one_model.dart';import 'package:flutter/material.dart';/// A controller class for the ChangeNameOneScreen.
///
/// This class manages the state of the ChangeNameOneScreen, including the
/// current changeNameOneModelObj
class ChangeNameOneController extends GetxController {TextEditingController firstNameController = TextEditingController();

TextEditingController lastNameController = TextEditingController();

Rx<ChangeNameOneModel> changeNameOneModelObj = ChangeNameOneModel().obs;

@override void onClose() { super.onClose(); firstNameController.dispose(); lastNameController.dispose(); } 
 }
