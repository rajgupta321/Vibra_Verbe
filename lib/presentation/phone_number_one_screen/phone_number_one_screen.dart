import 'controller/phone_number_one_controller.dart';import 'package:flutter/material.dart';import 'package:vibra_verve/core/app_export.dart';import 'package:vibra_verve/core/utils/validation_functions.dart';import 'package:vibra_verve/widgets/app_bar/appbar_leading_image.dart';import 'package:vibra_verve/widgets/app_bar/appbar_subtitle_four.dart';import 'package:vibra_verve/widgets/app_bar/custom_app_bar.dart';import 'package:vibra_verve/widgets/custom_elevated_button.dart';import 'package:vibra_verve/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class PhoneNumberOneScreen extends GetWidget<PhoneNumberOneController> {PhoneNumberOneScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Form(key: _formKey, child: SizedBox(width: double.maxFinite, child: Column(children: [Divider(), SizedBox(height: 14.v), _buildPhoneNumberOne(), SizedBox(height: 5.v)]))), bottomNavigationBar: _buildSave())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 40.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftBlueGray300, margin: EdgeInsets.only(left: 16.h, top: 26.v, bottom: 28.v), onTap: () {onTapArrowLeft();}), title: AppbarSubtitleFour(text: "lbl_phone_number".tr, margin: EdgeInsets.only(left: 12.h)), styleType: Style.bgFill_1); } 
/// Section Widget
Widget _buildPhoneNumberOne() { return Container(padding: EdgeInsets.symmetric(horizontal: 16.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_phone_number".tr, style: CustomTextStyles.titleSmallIndigo900_1), SizedBox(height: 12.v), CustomTextFormField(controller: controller.phoneNumberController, hintText: "lbl_98616789060".tr, hintStyle: theme.textTheme.labelLarge!, textInputAction: TextInputAction.done, textInputType: TextInputType.phone, prefix: Container(margin: EdgeInsets.fromLTRB(16.h, 12.v, 10.h, 12.v), child: CustomImageView(imagePath: ImageConstant.imgSystemIcon24pxPhone, height: 24.adaptSize, width: 24.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 48.v), validator: (value) {if (!isValidPhone(value)) {return "err_msg_please_enter_valid_phone_number".tr;} return null;}, contentPadding: EdgeInsets.only(top: 15.v, right: 30.h, bottom: 15.v), borderDecoration: TextFormFieldStyleHelper.outlineBlueTL5, filled: false)])); } 
/// Section Widget
Widget _buildSave() { return CustomElevatedButton(height: 64.v, text: "lbl_save".tr, margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v), buttonTextStyle: CustomTextStyles.titleMediumOnErrorContainer); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
