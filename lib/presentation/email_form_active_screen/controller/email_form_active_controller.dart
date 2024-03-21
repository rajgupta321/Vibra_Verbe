import 'package:vibra_verve/core/app_export.dart';import 'package:vibra_verve/presentation/email_form_active_screen/models/email_form_active_model.dart';import 'package:flutter/material.dart';/// A controller class for the EmailFormActiveScreen.
///
/// This class manages the state of the EmailFormActiveScreen, including the
/// current emailFormActiveModelObj
class EmailFormActiveController extends GetxController {TextEditingController emailController = TextEditingController();

Rx<EmailFormActiveModel> emailFormActiveModelObj = EmailFormActiveModel().obs;

@override void onClose() { super.onClose(); emailController.dispose(); } 
 }
