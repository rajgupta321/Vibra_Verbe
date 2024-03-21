import 'controller/gender_choose_controller.dart';
import 'package:flutter/material.dart';
import 'package:vibra_verve/core/app_export.dart';
import 'package:vibra_verve/widgets/custom_drop_down.dart';
import 'package:vibra_verve/widgets/custom_elevated_button.dart';

class GenderChooseScreen extends GetWidget<GenderChooseController> {
 const GenderChooseScreen({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
  mediaQueryData = MediaQuery.of(context);
  return SafeArea(
      child: Scaffold(
          body: SizedBox(
              width: double.maxFinite,
              child: Column(children: [
               _buildArrowLeftRow(),
               Divider(),
               SizedBox(height: 15.v),
               _buildChooseGenderColumn(),
               SizedBox(height: 5.v)
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
           child: Text("lbl_gender".tr,
               style: CustomTextStyles.titleMediumIndigo900))
      ]));
 }

 /// Section Widget
 Widget _buildChooseGenderColumn() {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(children: [
       Align(
           alignment: Alignment.centerLeft,
           child: Text("lbl_choose_gender".tr,
               style: CustomTextStyles.titleMediumIndigo900_1)),
       SizedBox(height: 8.v),
       CustomDropDown(
           icon: Container(
               margin: EdgeInsets.fromLTRB(30.h, 12.v, 16.h, 12.v),
               child: CustomImageView(
                   imagePath: ImageConstant.imgSystemIcon24pxBottom,
                   height: 24.adaptSize,
                   width: 24.adaptSize)),
           hintText: "lbl_male".tr,
           items:
           controller.genderChooseModelObj.value.dropdownItemList!.value,
           onChanged: (value) {
            controller.onSelected(value);
           }),
       SizedBox(height: 8.v),
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

 /// Navigates to the previous screen.
 onTapImgArrowLeft() {
  Get.back();
 }
}