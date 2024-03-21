import 'controller/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:vibra_verve/core/app_export.dart';
import 'package:vibra_verve/widgets/app_bar/appbar_leading_image.dart';
import 'package:vibra_verve/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:vibra_verve/widgets/app_bar/custom_app_bar.dart';
import 'package:vibra_verve/widgets/custom_elevated_button.dart';import 'package:vibra_verve/widgets/custom_pin_code_text_field.dart';class SignUpScreen extends GetWidget<SignUpController> {const SignUpScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, backgroundColor: appTheme.gray10003, body: SizedBox(width: double.maxFinite, child: Column(children: [_buildNavbar(), Container(padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 41.v), child: Column(children: [Text("msg_enter_verification".tr, style: CustomTextStyles.bodyLargeInterBlack900), SizedBox(height: 27.v), Padding(padding: EdgeInsets.only(left: 18.h, right: 11.h), child: Obx(() => CustomPinCodeTextField(context: Get.context!, controller: controller.otpController.value, onChanged: (value) {}))), SizedBox(height: 32.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 41.h), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_if_you_didn_t_receive2".tr, style: CustomTextStyles.titleSmallMontserratGray500), TextSpan(text: "lbl_resend".tr, style: CustomTextStyles.titleSmallMontserratRed400)]), textAlign: TextAlign.left))), SizedBox(height: 12.v),
 CustomElevatedButton(onPressed: (){
  Get.toNamed('/sign_up_two_screen');
 },
    height: 48.v, text: "lbl_submit".tr,
     buttonStyle: CustomButtonStyles.fillPrimaryTL10,
     buttonTextStyle: CustomTextStyles.titleMediumOnErrorContainer17),
 SizedBox(height: 5.v)]))])))); }
/// Section Widget
Widget _buildNavbar() {
 return Container(
     padding: EdgeInsets.symmetric(vertical: 2.v),
     decoration: AppDecoration.fillOnErrorContainer,
     child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 20.v), CustomAppBar(height: 26.v, leadingWidth: 36.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftPrimary, margin: EdgeInsets.only(left: 16.h, top: 3.v, bottom: 2.v), onTap: () {onTapArrowLeft();}), title: AppbarSubtitleThree(text: "lbl_back".tr, margin: EdgeInsets.only(left: 5.h))), SizedBox(height: 9.v), Text("lbl_forgot_password".tr, style: CustomTextStyles.titleMediumGray900)])); }

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
