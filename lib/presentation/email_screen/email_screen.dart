import 'controller/email_controller.dart';import 'package:flutter/material.dart';import 'package:vibra_verve/core/app_export.dart';import 'package:vibra_verve/core/utils/validation_functions.dart';import 'package:vibra_verve/widgets/app_bar/appbar_leading_image.dart';import 'package:vibra_verve/widgets/app_bar/appbar_subtitle_four.dart';import 'package:vibra_verve/widgets/app_bar/custom_app_bar.dart';import 'package:vibra_verve/widgets/custom_elevated_button.dart';import 'package:vibra_verve/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class EmailScreen extends GetWidget<EmailController> {EmailScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Form(key: _formKey, child: SizedBox(width: double.maxFinite, child: Column(children: [Divider(), SizedBox(height: 16.v), _buildEmailSection(), SizedBox(height: 10.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 16.h), child: Text("msg_we_will_send_verification".tr, style: CustomTextStyles.bodySmallPrimary))), SizedBox(height: 5.v)]))), bottomNavigationBar: _buildChangeEmailButton())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 40.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftBlueGray300, margin: EdgeInsets.only(left: 16.h, top: 26.v, bottom: 28.v), onTap: () {onTapArrowLeft();}), title: AppbarSubtitleFour(text: "lbl_email".tr, margin: EdgeInsets.only(left: 12.h)), styleType: Style.bgFill_1); } 
/// Section Widget
Widget _buildEmailSection() { return Container(padding: EdgeInsets.symmetric(horizontal: 16.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_change_email".tr, style: CustomTextStyles.titleMediumIndigo900_1), SizedBox(height: 7.v), CustomTextFormField(controller: controller.emailController, hintText: "msg_abc123_gmail_com".tr, hintStyle: theme.textTheme.bodySmall!, textInputAction: TextInputAction.done, textInputType: TextInputType.emailAddress, prefix: Container(margin: EdgeInsets.fromLTRB(16.h, 12.v, 10.h, 12.v), child: CustomImageView(imagePath: ImageConstant.imgSystemIcon24pxMessageBlueGray300, height: 24.adaptSize, width: 24.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 48.v), validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;}, contentPadding: EdgeInsets.only(top: 15.v, right: 30.h, bottom: 15.v))])); } 
/// Section Widget
Widget _buildChangeEmailButton() {
 return CustomElevatedButton(onPressed: (){
  Get.toNamed("/profile_screen");
 },
     height: 64.v, text: "lbl_change_email".tr, margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v), buttonTextStyle: CustomTextStyles.titleMediumOnErrorContainer); }

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
