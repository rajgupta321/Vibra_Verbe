import 'package:vibra_verve/core/app_export.dart';import 'package:vibra_verve/presentation/seven_screen/models/seven_model.dart';import 'package:flutter/material.dart';/// A controller class for the SevenScreen.
///
/// This class manages the state of the SevenScreen, including the
/// current sevenModelObj
class SevenController extends GetxController {TextEditingController phoneController = TextEditingController();

Rx<SevenModel> sevenModelObj = SevenModel().obs;

@override void onClose() { super.onClose(); phoneController.dispose(); } 
 }
