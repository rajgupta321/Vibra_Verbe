import 'dart:convert';

import 'package:vibra_verve/core/app_export.dart';
import 'package:vibra_verve/presentation/login_screen/models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
/// A controller class for the LoginScreen.
///
/// This class manages the state of the LoginScreen, including the
/// current loginModelObj
class LoginController extends GetxController {
 TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

Rx<LoginModel> loginModelObj = LoginModel().obs;

Rx<bool> isShowPassword = true.obs;

@override void onClose() {
 super.onClose();
 emailController.dispose();
 passwordController.dispose(); }

 RxBool loading = false.obs;

void loginApi()async{
loading.value = true;
 try{
  final response = await post(Uri.parse('https://reqres.in/api/login'),
      body: {
       'email':emailController.value.text,
       'password':passwordController.value.text
      });

  var data = jsonDecode(response.body);
  // print(response.statusCode);
  // print(data);
  if (response.statusCode== 200){
   loading.value = false;
   Get.snackbar("Login successful", "congregational");
   //Get.offAllNamed('/home_page');
   }else{
   loading.value = false;
   Get.snackbar("Login Failed", data["error"]);
    }
  }catch(e){
  loading.value = false;
  Get.snackbar("Exception", e.toString());
  }


 }

 }
