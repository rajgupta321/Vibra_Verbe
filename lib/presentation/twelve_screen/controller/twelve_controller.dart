import 'package:vibra_verve/core/app_export.dart';import 'package:vibra_verve/presentation/twelve_screen/models/twelve_model.dart';import 'package:flutter/material.dart';/// A controller class for the TwelveScreen.
///
/// This class manages the state of the TwelveScreen, including the
/// current twelveModelObj
class TwelveController extends GetxController {TextEditingController phoneController = TextEditingController();

Rx<TwelveModel> twelveModelObj = TwelveModel().obs;

@override void onClose() { super.onClose(); phoneController.dispose(); } 
 }
