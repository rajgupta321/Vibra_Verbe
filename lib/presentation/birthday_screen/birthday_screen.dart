import 'controller/birthday_controller.dart';import 'package:flutter/material.dart';import 'package:vibra_verve/core/app_export.dart';import 'package:vibra_verve/widgets/custom_elevated_button.dart';class BirthdayScreen extends GetWidget<BirthdayController> {const BirthdayScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [_buildArrowLeftRow(), Divider(), SizedBox(height: 15.v), _buildBirthdayColumn(), SizedBox(height: 5.v)])), bottomNavigationBar: _buildSaveColumn())); } 
/// Section Widget
Widget _buildArrowLeftRow() { return Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 26.v), decoration: AppDecoration.fillOnErrorContainer, child: Row(children: [CustomImageView(imagePath: ImageConstant.imgArrowLeftBlueGray300, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(bottom: 2.v), onTap: () {onTapImgArrowLeft();}), Padding(padding: EdgeInsets.only(left: 12.h), child: Text("lbl_birthday".tr, style: CustomTextStyles.titleMediumIndigo900_1))])); } 
/// Section Widget
Widget _buildBirthdayColumn() { return Container(padding: EdgeInsets.symmetric(horizontal: 16.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_your_birhday".tr, style: CustomTextStyles.titleSmallIndigo900_1), SizedBox(height: 10.v), Container(padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 11.v), decoration: AppDecoration.outlineBlue502.copyWith(borderRadius: BorderRadiusStyle.circleBorder3), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(top: 2.v, bottom: 3.v), child: Text("lbl_12_12_2012".tr, style: theme.textTheme.bodySmall)), CustomImageView(imagePath: ImageConstant.imgSystemIcon24pxDateBlueGray300, height: 24.adaptSize, width: 24.adaptSize)]))])); } 
/// Section Widget
Widget _buildSaveColumn() { return CustomElevatedButton(height: 64.v, text: "lbl_save".tr, margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v), buttonTextStyle: CustomTextStyles.titleMediumOnErrorContainer); } 

/// Navigates to the previous screen.
onTapImgArrowLeft() { Get.back(); } 
 }
