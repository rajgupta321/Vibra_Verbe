import 'controller/change_name_one_controller.dart';import 'package:flutter/material.dart';import 'package:vibra_verve/core/app_export.dart';import 'package:vibra_verve/widgets/app_bar/appbar_leading_image.dart';import 'package:vibra_verve/widgets/app_bar/appbar_subtitle_seven.dart';import 'package:vibra_verve/widgets/app_bar/custom_app_bar.dart';import 'package:vibra_verve/widgets/custom_elevated_button.dart';import 'package:vibra_verve/widgets/custom_text_form_field.dart';class ChangeNameOneScreen extends GetWidget<ChangeNameOneController> {const ChangeNameOneScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: SizedBox(width: double.maxFinite, child: Column(children: [Divider(), SizedBox(height: 23.v), _buildChangeNameOne(), SizedBox(height: 40.v), _buildChangeNameTwo(), SizedBox(height: 5.v)])), bottomNavigationBar: _buildSaveButton())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 40.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftBlueGray300, margin: EdgeInsets.only(left: 16.h, top: 26.v, bottom: 28.v), onTap: () {onTapArrowLeft();}), title: AppbarSubtitleSeven(text: "lbl_name".tr, margin: EdgeInsets.only(left: 12.h)), styleType: Style.bgFill_1); } 
/// Section Widget
Widget _buildChangeNameOne() { return Container(padding: EdgeInsets.symmetric(horizontal: 16.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 4.h), child: Text("lbl_first_name".tr, style: CustomTextStyles.titleMediumIndigo900_1)), SizedBox(height: 9.v), CustomTextFormField(controller: controller.firstNameController)])); } 
/// Section Widget
Widget _buildChangeNameTwo() { return Container(padding: EdgeInsets.symmetric(horizontal: 16.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 4.h), child: Text("lbl_last_name".tr, style: CustomTextStyles.titleMediumIndigo900_1)), SizedBox(height: 8.v), CustomTextFormField(controller: controller.lastNameController, textInputAction: TextInputAction.done)])); } 
/// Section Widget
Widget _buildSaveButton() { return CustomElevatedButton(height: 64.v, text: "lbl_save".tr, margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v), buttonTextStyle: CustomTextStyles.titleMediumOnErrorContainer); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
