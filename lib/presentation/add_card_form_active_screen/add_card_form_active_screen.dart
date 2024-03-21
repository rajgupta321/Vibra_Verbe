import 'controller/add_card_form_active_controller.dart';
import 'package:flutter/material.dart';
import 'package:vibra_verve/core/app_export.dart';
import 'package:vibra_verve/widgets/app_bar/appbar_subtitle_seven.dart';
import 'package:vibra_verve/widgets/app_bar/appbar_title_image.dart';
import 'package:vibra_verve/widgets/app_bar/custom_app_bar.dart';
import 'package:vibra_verve/widgets/custom_elevated_button.dart';
import 'package:vibra_verve/widgets/custom_text_form_field.dart';

class AddCardFormActiveScreen extends GetWidget<AddCardFormActiveController> {
 const AddCardFormActiveScreen({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
  mediaQueryData = MediaQuery.of(context);
  return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: _buildAppBar(),
          body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 14.v),
              child: Column(children: [
               _buildCardNumber(),
               SizedBox(height: 24.v),
               _buildSecurityCode1(),
               SizedBox(height: 23.v),
               _buildCardHolder(),
               SizedBox(height: 5.v)
              ])),
          bottomNavigationBar: _buildAddCard()));
 }

 /// Section Widget
 PreferredSizeWidget _buildAppBar() {
  return CustomAppBar(
      height: 123.v,
      centerTitle: true,
      title: Padding(
          padding: EdgeInsets.only(top: 70.v),
          child: Column(children: [
           Padding(
               padding: EdgeInsets.only(left: 16.h, right: 242.h),
               child: Row(children: [
                AppbarTitleImage(
                    imagePath: ImageConstant.imgArrowLeftBlueGray300,
                    onTap: () {
                     onTapArrowLeft();
                    }),
                AppbarSubtitleSeven(
                    text: "lbl_add_card".tr,
                    margin: EdgeInsets.only(left: 12.h))
               ])),
           SizedBox(height: 27.v),
           SizedBox(width: double.maxFinite, child: Divider())
          ])),
      styleType: Style.bgFill_3);
 }

 /// Section Widget
 Widget _buildCardNumber() {
  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
   Text("lbl_card_number".tr, style: theme.textTheme.titleSmall),
   SizedBox(height: 12.v),
   CustomTextFormField(
       controller: controller.cardNumberController,
       hintText: "msg_1231_2312_3123".tr,
       hintStyle: theme.textTheme.labelLarge!)
  ]);
 }

 /// Section Widget
 Widget _buildExpirationDate() {
  return Expanded(
      child: Padding(
          padding: EdgeInsets.only(right: 6.h),
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
           Text("lbl_expiration_date".tr, style: theme.textTheme.titleSmall),
           SizedBox(height: 11.v),
           Row(mainAxisSize: MainAxisSize.max, children: [
            CustomTextFormField(
                width: 120.h,
                // controller: controller.securityCodeController,
                hintText: "lbl_12_12".tr,
                hintStyle: theme.textTheme.labelLarge!)
            // Text("lbl_12_12".tr, style: theme.textTheme.labelLarge)
           ])
          ])));
 }

 /// Section Widget
 Widget _buildSecurityCode() {
  return Expanded(
      child: Padding(
          padding: EdgeInsets.only(left: 6.h),
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
           Text("lbl_security_code".tr, style: theme.textTheme.titleSmall),
           SizedBox(height: 11.v),
           CustomTextFormField(
               width: 165.h,
               controller: controller.securityCodeController,
               hintText: "lbl_1219".tr,
               hintStyle: theme.textTheme.labelLarge!)
          ])));
 }

 /// Section Widget
 Widget _buildSecurityCode1() {
  return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [_buildExpirationDate(), _buildSecurityCode()]);
 }

 /// Section Widget
 Widget _buildCardHolder() {
  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
   Text("lbl_card_holder2".tr, style: theme.textTheme.titleSmall),
   SizedBox(height: 12.v),
   CustomTextFormField(
       controller: controller.cardHoldervalueController,
       hintText: "lbl_lailyfa_febrina".tr,
       hintStyle: theme.textTheme.labelLarge!,
       textInputAction: TextInputAction.done)
  ]);
 }

 /// Section Widget
 Widget _buildAddCard() {
  return CustomElevatedButton(
   onPressed: (){
    Get.toNamed('/lailyfa_febrina_card_screen');
   },
      text: "lbl_add_card".tr,
      margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v));
 }

 /// Navigates to the previous screen.
 onTapArrowLeft() {
  Get.back();
 }
}