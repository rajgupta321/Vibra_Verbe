import 'controller/payment_method_controller.dart';
import 'package:flutter/material.dart';
import 'package:vibra_verve/core/app_export.dart';
import 'package:vibra_verve/widgets/app_bar/appbar_leading_image.dart';
import 'package:vibra_verve/widgets/app_bar/appbar_subtitle_six.dart';
import 'package:vibra_verve/widgets/app_bar/custom_app_bar.dart';

class PaymentMethodScreen extends GetWidget<PaymentMethodController> {
 const PaymentMethodScreen({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
  mediaQueryData = MediaQuery.of(context);
  return SafeArea(
      child: Scaffold(
          body: SizedBox(
              width: double.maxFinite,
              child: Column(children: [
               _buildHeader(),
               Column(children: [
                _buildCreditCard(onTap: (){
                 Get.toNamed('/credit_card_and_debit_screen');
                }),
                _buildPaypal(),
                SizedBox(height: 5.v),
                _buildPayBankTransfer()
               ])
              ]))));
 }

 /// Section Widget
 Widget _buildHeader() {
  return Column(children: [
   CustomAppBar(
       height: 78.v,
       leadingWidth: 40.h,
       leading: AppbarLeadingImage(
           imagePath: ImageConstant.imgArrowLeftBlueGray300,
           margin: EdgeInsets.only(left: 16.h, top: 26.v, bottom: 28.v),
           onTap: () {
            onTapArrowLeft();
           }),
       title: AppbarSubtitleSix(
           text: "lbl_payment".tr, margin: EdgeInsets.only(left: 12.h)),
       styleType: Style.bgFill_2),
   Divider()
  ]);
 }

 /// Common widget
 Widget _buildCreditCard({VoidCallback? onTap}) {
  return GestureDetector(
   onTap: onTap,
   child: Container(
       width: double.maxFinite,
       padding: EdgeInsets.all(16.h),
       decoration: AppDecoration.fillOnErrorContainer,
       child: Row(children: [
        CustomImageView(fit: BoxFit.contain,
            imagePath: ImageConstant.imgOtherIconCredit,
            height: 24.adaptSize,
            width: 24.adaptSize),
        Padding(
            padding: EdgeInsets.only(left: 16.h, top: 4.v),
            child: Text("Credit Card Or Debit".tr,
                style: CustomTextStyles.labelLargePoppinsIndigo900))
       ])),
  );
 }
 Widget _buildPaypal() {
  return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.fillOnErrorContainer,
      child: Row(children: [
       CustomImageView(
           imagePath: ImageConstant.imgOtherIconPaypal,
           height: 24.adaptSize,
           width: 24.adaptSize),
       Padding(
           padding: EdgeInsets.only(left: 16.h, top: 4.v),
           child: Text("lbl_paypal".tr,
               style: CustomTextStyles.labelLargePoppinsIndigo900))
      ]));
 }
 Widget _buildPayBankTransfer() {
  return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.fillOnErrorContainer,
      child: Row(children: [
       CustomImageView(fit: BoxFit.contain,
           imagePath: ImageConstant.imgOtherIconBank,
           height: 24.adaptSize,
           width: 24.adaptSize),
       Padding(
           padding: EdgeInsets.only(left: 16.h, top: 4.v),
           child: Text("Bank Transfer".tr,
               style: CustomTextStyles.labelLargePoppinsIndigo900))
      ]));
 }

 /// Navigates to the previous screen.
 onTapArrowLeft() {
  Get.back();
 }
}
