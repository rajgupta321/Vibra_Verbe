import 'package:vibra_verve/presentation/account_page/account_page.dart';

import 'controller/lailyfa_febrina_card_controller.dart';import 'package:flutter/material.dart';import 'package:vibra_verve/core/app_export.dart';import 'package:vibra_verve/widgets/app_bar/appbar_subtitle_seven.dart';import 'package:vibra_verve/widgets/app_bar/appbar_title_image.dart';import 'package:vibra_verve/widgets/app_bar/custom_app_bar.dart';import 'package:vibra_verve/widgets/custom_elevated_button.dart';import 'package:vibra_verve/widgets/custom_text_form_field.dart';class LailyfaFebrinaCardScreen extends GetWidget<LailyfaFebrinaCardController> {const LailyfaFebrinaCardScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 15.v), child: Column(children: [_buildCreditCard1(), SizedBox(height: 23.v), _buildCardNumber(), SizedBox(height: 24.v), _buildSecurityCode1(), SizedBox(height: 23.v), _buildCardHolder(), SizedBox(height: 5.v)])), bottomNavigationBar: _buildSave())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 123.v, centerTitle: true, title: Padding(padding: EdgeInsets.only(top: 70.v), child: Column(children: [Padding(padding: EdgeInsets.only(left: 16.h, right: 150.h), child: Row(children: [AppbarTitleImage(imagePath: ImageConstant.imgArrowLeftBlueGray300, margin: EdgeInsets.only(bottom: 1.v), onTap: () {onTapArrowLeft();}), AppbarSubtitleSeven(text: "msg_lailyfa_febrina".tr, margin: EdgeInsets.only(left: 12.h, top: 1.v))])), SizedBox(height: 26.v), SizedBox(width: double.maxFinite, child: Divider())])), styleType: Style.bgFill_3); } 
/// Section Widget
Widget _buildCreditCard1() { return Container(margin: EdgeInsets.only(left: 2.h), padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 23.v), decoration: AppDecoration.fillPrimary1.copyWith(borderRadius: BorderRadiusStyle.circleBorder3), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Container(height: 22.v, width: 36.h, margin: EdgeInsets.only(left: 3.h), child: Stack(alignment: Alignment.centerRight, children: [Align(alignment: Alignment.centerLeft, child: Container(height: 22.adaptSize, width: 22.adaptSize, decoration: BoxDecoration(color: appTheme.gray400, borderRadius: BorderRadius.circular(11.h)))), Align(alignment: Alignment.centerRight, child: Container(height: 22.adaptSize, width: 22.adaptSize, decoration: BoxDecoration(color: appTheme.gray400, borderRadius: BorderRadius.circular(11.h))))])), SizedBox(height: 30.v), Text("msg_6326_9124".tr, style: theme.textTheme.headlineSmall), SizedBox(height: 17.v), Row(children: [Padding(padding: EdgeInsets.only(top: 2.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Opacity(opacity: 0.5, child: Text("lbl_card_holder".tr, style: CustomTextStyles.bodySmallOnErrorContainer)), SizedBox(height: 4.v), Text("lbl_lailyfa_febrina".tr, style: theme.textTheme.labelMedium)])), Padding(padding: EdgeInsets.only(left: 27.h, bottom: 3.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Opacity(opacity: 0.5, child: Text("lbl_card_save".tr, style: CustomTextStyles.bodySmallOnErrorContainer)), SizedBox(height: 3.v), Text("lbl_19_2042".tr, style: theme.textTheme.labelMedium)]))])])); } 
/// Section Widget
Widget _buildCardNumber() { return Padding(padding: EdgeInsets.only(left: 2.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 2.h), child: Text("lbl_card_number".tr, style: theme.textTheme.titleSmall)), SizedBox(height: 12.v), Padding(padding: EdgeInsets.only(left: 2.h), child: CustomTextFormField(controller: controller.cardNumberController, hintText: "msg_1231_2312_3123".tr, hintStyle: theme.textTheme.labelLarge!))])); } 
/// Section Widget
Widget _buildExpirationDate() { return Expanded(child: Padding(padding: EdgeInsets.only(right: 6.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_expiration_date".tr, style: theme.textTheme.titleSmall), SizedBox(height: 11.v), Container(padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 13.v), decoration: AppDecoration.outlineBlue.copyWith(borderRadius: BorderRadiusStyle.circleBorder3), child: Row(mainAxisSize: MainAxisSize.max, children: [Text("lbl_12_12".tr, style: theme.textTheme.labelLarge)]))]))); } 
/// Section Widget
Widget _buildSecurityCode() { return Expanded(child: Padding(padding: EdgeInsets.only(left: 6.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_security_code".tr, style: theme.textTheme.titleSmall), SizedBox(height: 11.v), CustomTextFormField(width: 165.h, controller: controller.securityCodeController, hintText: "lbl_1219".tr, hintStyle: theme.textTheme.labelLarge!)]))); } 
/// Section Widget
Widget _buildSecurityCode1() { return Padding(padding: EdgeInsets.only(left: 2.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildExpirationDate(), _buildSecurityCode()])); } 
/// Section Widget
Widget _buildCardHolder() { return Padding(padding: EdgeInsets.only(left: 2.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 2.h), child: Text("lbl_card_holder2".tr, style: theme.textTheme.titleSmall)), SizedBox(height: 12.v), Padding(padding: EdgeInsets.only(left: 2.h), child: CustomTextFormField(controller: controller.cardHolderNameController, hintText: "lbl_lailyfa_febrina".tr, hintStyle: theme.textTheme.labelLarge!, textInputAction: TextInputAction.done))])); } 
/// Section Widget
Widget _buildSave() {
 return CustomElevatedButton(onPressed: (){
  Get.to(AccountPage());
 },
     text: "lbl_save".tr,
     margin: EdgeInsets.only(
         left: 16.h,
         right: 16.h,
         bottom: 50.v)); }

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
