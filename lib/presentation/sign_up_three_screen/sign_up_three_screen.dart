import 'controller/sign_up_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:vibra_verve/core/app_export.dart';
import 'package:vibra_verve/core/utils/validation_functions.dart';
import 'package:vibra_verve/widgets/app_bar/appbar_leading_image.dart';
import 'package:vibra_verve/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:vibra_verve/widgets/app_bar/custom_app_bar.dart';
import 'package:vibra_verve/widgets/custom_elevated_button.dart';
import 'package:vibra_verve/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpThreeScreen extends GetWidget<SignUpThreeController> {
 SignUpThreeScreen({Key? key}) : super(key: key);

 GlobalKey<FormState> _formKey = GlobalKey<FormState>();

 @override
 Widget build(BuildContext context) {
  mediaQueryData = MediaQuery.of(context);
  return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: appTheme.gray10003,
          body: Form(
              key: _formKey,
              child: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                   _buildNavbar(),
                   Container(
                       padding: EdgeInsets.only(
                           left: 14.h, top: 78.v, right: 14.h),
                       child: Column(children: [
                        Padding(
                            padding: EdgeInsets.only(left: 2.h, right: 4.h),
                            child: Obx(() => CustomTextFormField(
                                controller: controller.emailController,
                                hintText: "lbl_e_mail2".tr,
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.emailAddress,
                                suffix: InkWell(
                                    onTap: () {
                                     controller.isShowPassword.value =
                                     !controller.isShowPassword.value;
                                    },
                                    child: Container(
                                        margin: EdgeInsets.fromLTRB(
                                            30.h, 23.v, 21.h, 23.v),
                                        child: CustomImageView(
                                            imagePath:
                                            ImageConstant.imgContrast,
                                            height: 10.v,
                                            width: 16.h))),
                                suffixConstraints:
                                BoxConstraints(maxHeight: 56.v),
                                validator: (value) {
                                 if (value == null ||
                                     (!isValidEmail(value,
                                         isRequired: true))) {
                                  return "err_msg_please_enter_valid_email"
                                      .tr;
                                 }
                                 return null;
                                },
                                obscureText:
                                controller.isShowPassword.value,
                                contentPadding: EdgeInsets.only(
                                    left: 15.h, top: 15.v, bottom: 15.v),
                                borderDecoration:
                                TextFormFieldStyleHelper.outlineGray,
                                filled: false))),
                        SizedBox(height: 33.v),
                        CustomElevatedButton(
                         onPressed: (){
                          Get.toNamed('/sign_up_screen');},
                            height: 48.v,
                            text: "lbl_submit".tr,
                            buttonStyle: CustomButtonStyles.fillPrimaryTL10,
                            buttonTextStyle: CustomTextStyles
                                .titleMediumOnErrorContainer17),
                        SizedBox(height: 5.v)
                       ]))
                  ])))));
 }

 /// Section Widget
 Widget _buildNavbar() {
  return Container(
      padding: EdgeInsets.symmetric(vertical: 2.v),
      decoration: AppDecoration.fillOnErrorContainer,
      child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
       SizedBox(height: 20.v),
       CustomAppBar(
           height: 26.v,
           leadingWidth: 36.h,
           leading: AppbarLeadingImage(
               imagePath: ImageConstant.imgArrowLeftPrimary,
               margin: EdgeInsets.only(left: 16.h, top: 3.v, bottom: 2.v),
               onTap: () {
                onTapArrowLeft();
               }),
           title: AppbarSubtitleThree(
               text: "lbl_back".tr,
               margin: EdgeInsets.only(left: 5.h))),
       SizedBox(height: 9.v),
       Text("lbl_forgot_password".tr,
           style: CustomTextStyles.titleMediumGray900)
      ]));
 }

 /// Navigates to the previous screen.
 onTapArrowLeft() {
  Get.back();
 }
}
