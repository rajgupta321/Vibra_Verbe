import 'controller/add_card_controller.dart';import 'package:flutter/material.dart';import 'package:vibra_verve/core/app_export.dart';import 'package:vibra_verve/core/utils/validation_functions.dart';import 'package:vibra_verve/widgets/app_bar/appbar_subtitle_seven.dart';import 'package:vibra_verve/widgets/app_bar/appbar_title_image.dart';import 'package:vibra_verve/widgets/app_bar/custom_app_bar.dart';import 'package:vibra_verve/widgets/custom_elevated_button.dart';import 'package:vibra_verve/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class AddCardScreen extends GetWidget<AddCardController> {AddCardScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 14.v), child: Column(children: [_buildCardNumber(), SizedBox(height: 24.v), _buildSecurityCode1(), SizedBox(height: 23.v), _buildCardHolder(), SizedBox(height: 5.v)]))), bottomNavigationBar: _buildAddCard())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 123.v, centerTitle: true, title: Padding(padding: EdgeInsets.only(top: 70.v), child: Column(children: [Padding(padding: EdgeInsets.only(left: 16.h, right: 242.h), child: Row(children: [AppbarTitleImage(imagePath: ImageConstant.imgArrowLeftBlueGray300, onTap: () {onTapArrowLeft();}), AppbarSubtitleSeven(text: "lbl_add_card".tr, margin: EdgeInsets.only(left: 12.h))])), SizedBox(height: 27.v), SizedBox(width: double.maxFinite, child: Divider())])), styleType: Style.bgFill_3); } 
/// Section Widget
Widget _buildCardNumber() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_card_number".tr, style: theme.textTheme.titleSmall), SizedBox(height: 12.v), CustomTextFormField(controller: controller.cardNumberController, hintText: "msg_enter_card_number".tr, hintStyle: theme.textTheme.bodySmall!, textInputType: TextInputType.number, validator: (value) {if (!isNumeric(value)) {return "err_msg_please_enter_valid_number".tr;} return null;}, contentPadding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 15.v))]); } 
/// Section Widget
Widget _buildExpirationDate() { return Expanded(child: Padding(padding: EdgeInsets.only(right: 6.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_expiration_date".tr, style: theme.textTheme.titleSmall), SizedBox(height: 11.v),
 Container(
     padding: EdgeInsets.symmetric(
         horizontal: 15.h, vertical: 13.v),
     decoration: AppDecoration.outlineBlue.copyWith
      (borderRadius: BorderRadiusStyle.circleBorder3),
     child: Row(mainAxisSize: MainAxisSize.max,
         children: [Padding(
             padding: EdgeInsets.only(top: 2.v),
             child: Text("lbl_expiration_date".tr,
                 style: theme.textTheme.bodySmall)
         )]))]))); }
/// Section Widget
Widget _buildSecurityCode() { return Expanded(child: Padding(padding: EdgeInsets.only(left: 6.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_security_code".tr, style: theme.textTheme.titleSmall), SizedBox(height: 11.v), CustomTextFormField(width: 165.h, controller: controller.securityCodeController, hintText: "lbl_security_code".tr, hintStyle: theme.textTheme.bodySmall!)]))); } 
/// Section Widget
Widget _buildSecurityCode1() { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildExpirationDate(), _buildSecurityCode()]); } 
/// Section Widget
Widget _buildCardHolder() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_card_holder2".tr, style: theme.textTheme.titleSmall), SizedBox(height: 12.v), CustomTextFormField(controller: controller.cardNumberController1, hintText: "msg_enter_card_number".tr, hintStyle: theme.textTheme.bodySmall!, textInputAction: TextInputAction.done, textInputType: TextInputType.number, validator: (value) {if (!isNumeric(value)) {return "err_msg_please_enter_valid_number".tr;} return null;}, contentPadding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 15.v))]); } 
/// Section Widget
Widget _buildAddCard() { return CustomElevatedButton(text: "lbl_add_card".tr, margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v)); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
