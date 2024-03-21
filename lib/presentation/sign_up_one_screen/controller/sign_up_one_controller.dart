import 'dart:convert';
import 'package:http/http.dart';
import 'package:vibra_verve/core/app_export.dart';
import 'package:vibra_verve/presentation/sign_up_one_screen/models/sign_up_one_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';
/// A controller class for the SignUpOneScreen.
///
/// This class manages the state of the SignUpOneScreen, including the
/// current signUpOneModelObj
class SignUpOneController extends GetxController {
 TextEditingController phoneNumberController = TextEditingController();

TextEditingController firstNameController = TextEditingController();

TextEditingController lastNameController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

Rx<SignUpOneModel> signUpOneModelObj = SignUpOneModel().obs;

Rx<Country> selectedCountry = CountryPickerUtils.getCountryByPhoneCode('91').obs;

Rx<bool> isShowPassword = true.obs;

@override void onClose() {
 super.onClose();
 phoneNumberController.dispose();
 firstNameController.dispose();
 lastNameController.dispose();
 emailController.dispose();
 passwordController.dispose(); }
 RxBool loading = false.obs;
 void signUpApi()async{
  loading.value = true;
  try{
   final response = await post(Uri.parse('https://reqres.in/api/register'),
       body: {
         'firstName':firstNameController.value.text,
        'lastName':firstNameController.value.text,
        'email':emailController.value.text,
        'password':passwordController.value.text
       });

   var data = jsonDecode(response.body);
   print(response.statusCode);
   print(data);
   if (response.statusCode== 200 ||response.statusCode== 201){
    loading.value = false;
    Get.snackbar("Login successful", "congregational");
    // Get.offAllNamed('/home_page');
   }else{
    loading.value = false;
    Get.snackbar("SignUp Failed", data["error"]);
   }
  }catch(e){
   loading.value = false;
   Get.snackbar("Exception", e.toString());
  }
 }
 }
