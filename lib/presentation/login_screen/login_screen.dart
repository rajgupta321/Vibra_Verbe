import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:vibra_verve/core/app_export.dart';
import 'package:vibra_verve/core/utils/validation_functions.dart';
import 'package:vibra_verve/widgets/custom_elevated_button.dart';
import 'package:vibra_verve/widgets/custom_outlined_button.dart';
import 'package:vibra_verve/widgets/custom_text_form_field.dart';
import 'package:vibra_verve/domain/googleauth/google_auth_helper.dart';
// ignore_for_file: must_be_immutable

class LoginScreen extends GetWidget<LoginController> {
  LoginScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context);
  return SafeArea(child: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: appTheme.gray10003,

      body: Form(key: _formKey,
          child: Container(
              width: double.maxFinite,
              padding:
              EdgeInsets.symmetric(
                  horizontal: 22.h, vertical: 10.v),
              child: Column(
                  children: [
                    SizedBox(height: 50,),
                    Container(
                      height: 64,
                      width: 64,
                      decoration:
                      BoxDecoration(
                          color:Colors.grey.shade300,
                          borderRadius:
                          BorderRadius.all(Radius.circular(10)) ),
                      child: Center(child: Text("^v",style: TextStyle(
                          color: Colors.teal.shade900,
                          fontWeight: FontWeight.bold,fontSize: 30),)),
                    ),
                    Text("lbl_vibraverve".tr,
                        style: CustomTextStyles.headlineSmallBluegray900),
                    SizedBox(height: 47.v),
                    _buildEmail(),
                    SizedBox(height: 16.v),
                    _buildPassword(),
                    SizedBox(height: 12.v),
                    Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(onPressed: (){
                          Get.toNamed('/sign_up_three_screen');
                        },
                            child: Text("msg_forgot_password".tr,
                                style: CustomTextStyles.bodyLargePoppinsBluegray900))),
                    SizedBox(height: 57.v),
                    _buildLoginButton(),
                    SizedBox(height: 37.v),
                    Divider(
                        color: appTheme.black900.withOpacity(0.4),
                        indent: 8.h, endIndent: 5.h),
                    SizedBox(height: 35.v),
                    _buildGoogleButton(),
                    SizedBox(height: 39.v),
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
                                    Text("msg_don_t_have_an_account".tr,
                                        style: theme.textTheme.bodyLarge)),
                                  Padding(
                                      padding: EdgeInsets.only(left: 0.h),
                                      child:
                                      TextButton(onPressed: (){
                                        Get.toNamed('/sign_up_one_screen');
                                      },
                                          child: Text("lbl_register".tr,
                                              style: CustomTextStyles.titleMediumInterPrimary.copyWith(
                                                  decoration: TextDecoration.underline)
                                          ))
                                  )]))),
                    SizedBox(height: 5.v)
                  ]))))); }
  /// Section Widget
// PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 110.v, centerTitle: true,  actions: [AppbarSubtitle(text: "lbl_v".tr, margin: EdgeInsets.fromLTRB(171.h, 16.v, 171.h, 22.v))], styleType: Style.bgFill_1); }
  /// Section Widget
  Widget _buildEmail() {
    return CustomTextFormField(
        controller: controller.emailController,
        hintText: "lbl_email_address".tr,
        hintStyle: CustomTextStyles.bodyLargePoppinsGray40005,
        textInputType: TextInputType.emailAddress,
        validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true
        )))
        {return "err_msg_please_enter_valid_email".tr;}
        return null;},
        contentPadding: EdgeInsets.all(15.h)); }
  /// Section Widget
  Widget _buildPassword() {
    return Obx(
            () => CustomTextFormField(
            controller: controller.passwordController,
            hintText: "lbl_password".tr,
            hintStyle: CustomTextStyles.bodyLargePoppinsGray40005,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            suffix: InkWell(
                onTap: () {controller.isShowPassword.value = !controller.isShowPassword.value;},
                child: Container(
                    margin: EdgeInsets.fromLTRB(30.h, 16.v, 15.h, 16.v),
                    child: CustomImageView(imagePath: ImageConstant.imgEye,
                        height: 24.v, width: 23.h))),
            suffixConstraints:
            BoxConstraints
              (maxHeight: 56.v),
            validator: (value) {
              if (value == null || (
                  !isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;}
              return null;}, obscureText: controller.isShowPassword.value,
            contentPadding: EdgeInsets.only(left: 15.h, top: 15.v, bottom: 15.v))); }
  /// Section Widget
  Widget _buildLoginButton() {
    return Obx(() => InkWell(
      onTap: () {
        Get.offNamed("home_page");
       // controller.loginApi();
      },
      child: controller.loading.value? CircularProgressIndicator() :
      Container(
        decoration: BoxDecoration(
          color: Colors.teal.shade800,
            borderRadius: BorderRadius.circular(12)),
        height: 45,
        child: Center(
          child: Text('lbl_login'.tr,
              style: TextStyle(
                  color: Colors.white,
              fontSize: 16
              )),
        ),
      ),
    ));
  }
  /// Section Widget
  Widget _buildGoogleButton() {
    return CustomOutlinedButton(
        height: 56.v,
        text: "msg_continue_with_google".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(
                right: 8.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgLogo,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        buttonStyle: CustomButtonStyles.outlineBlackTL10,
        buttonTextStyle: CustomTextStyles.bodyLargeBlack900,
        onPressed: () {onTapGoogleButton();}); }
  onTapGoogleButton() async  {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
    if(googleUser!=null){
      //TODO Actions to be performed after signin
    } else {
      Get.snackbar('Error', 'user data is empty');
    }
  }).catchError((onError) {
    Get.snackbar('Error', onError.toString());
  });
  }
}
