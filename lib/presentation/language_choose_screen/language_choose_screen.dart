import 'package:shared_preferences/shared_preferences.dart';

import 'controller/language_choose_controller.dart';
import 'package:flutter/material.dart';
import 'package:vibra_verve/core/app_export.dart';
import 'package:vibra_verve/widgets/custom_elevated_button.dart';

class LanguageChooseScreen extends GetWidget<LanguageChooseController> {
 const LanguageChooseScreen({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
  mediaQueryData = MediaQuery.of(context);
  return SafeArea(
      child: Scaffold(
          body: SizedBox(
              width: double.maxFinite,
              child: Column(children: [
               _buildArrowLeftRow(),
               Divider(height: 5),
               SizedBox(height: 5.v),
                _buildEnglishRow(onTap: () {
                  Get.updateLocale(Locale("en" , "US"));
                },),Divider(),
                _buildHindiRow(onTap: () {
                  Get.updateLocale(Locale("hi" , "IN"));
                },),Divider(),
                _buildKannadaRow(onTap: () {
                  Get.updateLocale(Locale("kn" , "IN"));
                },),Divider(),
                _buildNepaliRow(onTap: () {
                  Get.updateLocale(Locale("ne" , "NP"));
                },),Divider(),

              ])),
          bottomNavigationBar: _buildSaveColumn()));
 }

 /// Section Widget
 Widget _buildArrowLeftRow() {
  return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 26.v),
      decoration: AppDecoration.fillOnErrorContainer,
      child: Row(children: [
       CustomImageView(
           imagePath: ImageConstant.imgArrowLeftBlueGray300,
           height: 24.adaptSize,
           width: 24.adaptSize,
           margin: EdgeInsets.only(bottom: 2.v),
           onTap: () {
            onTapImgArrowLeft();
           }),
       Padding(
           padding: EdgeInsets.only(left: 12.h),
           child: Text("lbl_my_language".tr,
               style: CustomTextStyles.titleMediumIndigo900))
      ]));
 }

 /// Section Widget
 Widget _buildSaveColumn() {
  return CustomElevatedButton(onPressed: (){Get.back();
  },
      height: 64.v,
      text: "lbl_save".tr,
      margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v),
      buttonTextStyle: CustomTextStyles.titleMediumOnErrorContainer);
 }

 Widget _buildEnglishRow({VoidCallback? onTap}) {
   return GestureDetector(
       onTap:() {
         onTap?.call();
         _saveLanguage("en", "US");
         },
       child: Container(
           width: double.maxFinite,
           padding: EdgeInsets.all(16.h),
           decoration: AppDecoration.fillOnErrorContainer,
           child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
             Padding(
                 padding: EdgeInsets.only(left: 16.h, top: 2.v, bottom: 3.v),
                 child: Text("🇺🇸  English".tr,
                     style: TextStyle(fontSize: 20))),
             Spacer(),
           ])));
 }

 Widget _buildHindiRow({VoidCallback? onTap}) {
   return GestureDetector(
       onTap: () {
         onTap?.call();
         _saveLanguage("hi", "IN");
       },
       child: Container(
           width: double.maxFinite,
           padding: EdgeInsets.all(16.h),
           decoration: AppDecoration.fillOnErrorContainer,
           child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
             Padding(
                 padding: EdgeInsets.only(left: 16.h, top: 2.v, bottom: 3.v),
                 child: Text("🇮🇳  Hindi".tr,
                     style: TextStyle(fontSize: 20))),
             Spacer(),
           ])));
 }

 Widget _buildNepaliRow({VoidCallback? onTap}) {
   return GestureDetector(
       onTap: () {
         onTap?.call();
         _saveLanguage("ne", "NP");
       },
       child: Container(
           width: double.maxFinite,
           padding: EdgeInsets.all(16.h),
           decoration: AppDecoration.fillOnErrorContainer,
           child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
             Padding(
                 padding: EdgeInsets.only(left: 16.h, top: 2.v, bottom: 3.v),
                 child: Text("🇳🇵  Nepali".tr,
                     style: TextStyle(fontSize: 20))),
             Spacer(),
           ])));
 }

 Widget _buildKannadaRow({VoidCallback? onTap}) {
   return GestureDetector(
       onTap: () {
         onTap?.call();
         _saveLanguage("kn", "IN");
       },
       child: Container(
           width: double.maxFinite,
           padding: EdgeInsets.all(16.h),
           decoration: AppDecoration.fillOnErrorContainer,
           child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
             Padding(
                 padding: EdgeInsets.only(left: 16.h, top: 2.v, bottom: 3.v),
                 child: Text("🇮🇳  Kannada".tr,
                     style: TextStyle(fontSize: 20))),
             Spacer(),
           ])));
 }


 _saveLanguage(String languageCode, String countryCode) async {
   SharedPreferences prefs = await SharedPreferences.getInstance();
   await prefs.setString('languageCode', languageCode);
   await prefs.setString('countryCode', countryCode);
 }

 /// Navigates to the previous screen.
 onTapImgArrowLeft() {
  Get.back();
 }
}