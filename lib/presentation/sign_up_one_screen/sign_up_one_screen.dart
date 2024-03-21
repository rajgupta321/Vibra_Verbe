import 'controller/sign_up_one_controller.dart';
import 'package:country_pickers/country.dart';
import 'package:flutter/material.dart';
import 'package:vibra_verve/core/app_export.dart';
import 'package:vibra_verve/core/utils/validation_functions.dart';
import 'package:vibra_verve/widgets/app_bar/appbar_leading_image.dart';
import 'package:vibra_verve/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:vibra_verve/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:vibra_verve/widgets/app_bar/custom_app_bar.dart';
import 'package:vibra_verve/widgets/custom_elevated_button.dart';
import 'package:vibra_verve/widgets/custom_phone_number.dart';
import 'package:vibra_verve/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpOneScreen extends GetWidget<SignUpOneController> {
 SignUpOneScreen({Key? key}) : super(key: key);

 GlobalKey<FormState> _formKey = GlobalKey<FormState>();

 @override
 Widget build(BuildContext context) {
  mediaQueryData = MediaQuery.of(context);
  return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: appTheme.gray10003,
          appBar: _buildAppBar(),
          body: Form(
              key: _formKey,
              child: Container(
                  width: double.maxFinite,
                  padding:
                  EdgeInsets.symmetric(horizontal: 15.h, vertical: 32.v),
                  child: Column(children: [
                   _buildFormRow(),
                   SizedBox(height: 27.v),
                   _buildPhoneNumber(),
                   SizedBox(height: 27.v),
                   _buildEmail(),
                   SizedBox(height: 27.v),
                   _buildPassword(),
                   SizedBox(height: 15.v),
                   SizedBox(
                       width: 343.h,
                       child: Text("msg_by_signing_up_for2".tr,
                           maxLines: 2,
                           overflow: TextOverflow.ellipsis,
                           style: CustomTextStyles.bodySmallBluegray400
                               .copyWith(height: 1.50))),
                   SizedBox(height: 64.v),
                   _buildSignUpButton(),
                   SizedBox(height: 5.v),
                   Align(
                       alignment: Alignment.centerRight,
                       child: Padding(
                           padding: EdgeInsets.only(
                               left: 30.h, right: 15.h),
                           child: Row(
                               mainAxisAlignment: MainAxisAlignment.end,
                               children: [Padding(
                                   padding:
                                   EdgeInsets.only(bottom: 1.v),
                                   child:
                                   Text("lbl_already_have_an_account".tr,
                                       style: theme.textTheme.bodyLarge)),
                                Padding(
                                    padding: EdgeInsets.only(left: 0.h),
                                    child:
                                    TextButton(onPressed: (){
                                     Get.toNamed('/login_screen');
                                    },
                                        child: Text("lbl_login".tr,
                                            style: CustomTextStyles.titleMediumInterPrimary.copyWith(
                                                decoration: TextDecoration.underline)
                                        ))
                                )]))),

                  ])))));
 }

 /// Section Widget
 PreferredSizeWidget _buildAppBar() {
  return CustomAppBar(
      height: 88.v,
      leadingWidth: 36.h,
      leading: AppbarLeadingImage(
          imagePath: ImageConstant.imgArrowLeft,
          margin: EdgeInsets.only(left: 16.h, top: 27.v, bottom: 41.v),
          onTap: () {
           onTapArrowLeft();
          }),
      title: Padding(
          padding: EdgeInsets.only(left: 5.h),
          child: Column(children: [
           AppbarSubtitleThree(
               text: "lbl_back".tr, margin: EdgeInsets.only(right: 138.h)),
           SizedBox(height: 4.v),
           AppbarSubtitleTwo(
               text: "lbl_sign_up".tr, margin: EdgeInsets.only(left: 113.h))
          ])),
      styleType: Style.bgFill_1);
 }

 /// Section Widget
 Widget _buildFormRow() {
  return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      CustomTextFormField(
        borderDecoration: OutlineInputBorder(
            gapPadding: 3,borderSide:
        BorderSide(color: Colors.black26),
            borderRadius: BorderRadius.circular(12)),
        fillColor: Colors.transparent,
        width: 220,
      controller: controller.firstNameController,
      hintText: "lbl_first_name".tr,
      hintStyle: theme.textTheme.bodyLarge!,
      textInputType: TextInputType.name,
      ),
   CustomTextFormField(
     borderDecoration: OutlineInputBorder(
         gapPadding: 3,borderSide:
     BorderSide(color: Colors.black26),
         borderRadius: BorderRadius.circular(12)),
     fillColor: Colors.transparent,
     width: 220,
   controller: controller.lastNameController,
   hintText: "lbl_last_name".tr,
   hintStyle: theme.textTheme.bodyLarge!,
   textInputType: TextInputType.name,
   )
  ]);
 }

 /// Section Widget
 Widget _buildPhoneNumber() {
  return Obx(() => CustomPhoneNumber(
      country: controller.selectedCountry.value,
      controller: controller.phoneNumberController,
      onTap: (Country value) {
       controller.selectedCountry.value = value;
      }));
 }

 /// Section Widget
 Widget _buildEmail() {
  return CustomTextFormField(
      controller: controller.emailController,
      hintText: "lbl_email_address".tr,
      hintStyle: theme.textTheme.bodyLarge!,
      textInputType: TextInputType.emailAddress,
      validator: (value) {
       if (value == null || (!isValidEmail(value, isRequired: true))) {
        return "err_msg_please_enter_valid_email".tr;
       }
       return null;
      },
      borderDecoration: TextFormFieldStyleHelper.outlineGray,
      filled: false);
 }

 /// Section Widget
 Widget _buildPassword() {
  return Obx(() => CustomTextFormField(
      controller: controller.passwordController,
      hintText: "lbl_password".tr,
      hintStyle: theme.textTheme.bodyLarge!,
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      suffix: InkWell(
          onTap: () {
           controller.isShowPassword.value =
           !controller.isShowPassword.value;
          },
          child: Container(
              margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgEye,
                  height: 24.adaptSize,
                  width: 24.adaptSize))),
      suffixConstraints: BoxConstraints(maxHeight: 56.v),
      validator: (value) {
       if (value == null || (!isValidPassword(value, isRequired: true))) {
        return "err_msg_please_enter_valid_password".tr;
       }
       return null;
      },
      obscureText: controller.isShowPassword.value,
      contentPadding: EdgeInsets.only(left: 16.h, top: 15.v, bottom: 15.v),
      borderDecoration: TextFormFieldStyleHelper.outlineGray,
      filled: false));
 }

 /// Section Widget
 Widget _buildSignUpButton() {
  return Obx(() => InkWell(
    onTap: () {
      controller.signUpApi();
    },
    child: controller.loading.value? CircularProgressIndicator() :
    Container(
      decoration: BoxDecoration(
          color: Colors.teal.shade800,
          borderRadius: BorderRadius.circular(12)),
      height: 45,
      child: Center(
        child: Text('lbl_sign_up'.tr,
            style: TextStyle(
                color: Colors.white,
                fontSize: 16
            )),
      ),
    ),
  ));
 }

 /// Navigates to the previous screen.
 onTapArrowLeft() {
  Get.back();
 }
}