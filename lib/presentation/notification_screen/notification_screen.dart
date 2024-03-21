import 'controller/notification_controller.dart';
import 'package:flutter/material.dart';
import 'package:vibra_verve/core/app_export.dart';

class NotificationScreen extends GetWidget<NotificationController> {
 const NotificationScreen({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
  mediaQueryData = MediaQuery.of(context);
  return SafeArea(
   child: Scaffold(
    body: SizedBox(
     width: double.maxFinite,
     child: Column(
      children: [
       _buildNotificationRow(),
       Divider(),
       _buildofferRow(
        onTap: () {
         Get.toNamed('/notification_offer_screen');
        },
       ),
       _buildFeedRow(
        onTap: () {
         Get.toNamed('/notification_feed_screen');
        },
       ),
       SizedBox(height: 5.v),
       _buildAcivityRow(
        onTap: () {
         Get.toNamed('/notification_activity_screen');
        },
       ),
      ],
     ),
    ),
   ),
  );
 }

 /// Section Widget
 Widget _buildNotificationRow() {
  return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 25.v),
      decoration: AppDecoration.fillOnErrorContainer,
      child: Row(children: [
       CustomImageView(
           imagePath: ImageConstant.imgArrowLeftBlueGray300,
           height: 24.adaptSize,
           width: 24.adaptSize,
           margin: EdgeInsets.only(bottom: 2.v),
           onTap: () {
            onTapImgArrowLeft();
           }),
       Padding(
           padding: EdgeInsets.only(left: 12.h, bottom: 2.v),
           child: Text("lbl_notification".tr,
               style: CustomTextStyles.titleMediumIndigo90016))
      ]));
 }

 /// Common widget
 Widget _buildFeedRow({VoidCallback? onTap}) {
  return GestureDetector(
      onTap: onTap,
      child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(16.h),
          decoration: AppDecoration.fillOnErrorContainer,
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
           CustomImageView(
               imagePath: ImageConstant.imgSystemIcon24pxList,
               height: 24.adaptSize,
               width: 24.adaptSize),
           Padding(
               padding: EdgeInsets.only(left: 16.h, top: 2.v, bottom: 3.v),
               child: Text("lbl_feed".tr,
                   style: CustomTextStyles.labelLargePoppinsBlack900)),
           Spacer(),
           Container(
               width: 20.adaptSize,
               padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 2.v),
               decoration: AppDecoration.outlineOnErrorContainer
                   .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
               child: Text("4".tr,
                   style: CustomTextStyles.labelMediumOnErrorContainer))
          ])));
 }
 Widget _buildofferRow({VoidCallback? onTap}) {
  return GestureDetector(
      onTap: onTap,
      child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(16.h),
          decoration: AppDecoration.fillOnErrorContainer,
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
           CustomImageView(
               imagePath: ImageConstant.imgSort,
               height: 24.adaptSize,
               width: 24.adaptSize),
           Padding(
               padding: EdgeInsets.only(left: 16.h, top: 2.v, bottom: 3.v),
               child: Text("lbl_offer".tr,
                   style: CustomTextStyles.labelLargePoppinsBlack900)),
           Spacer(),
           Container(
               width: 20.adaptSize,
               padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 2.v),
               decoration: AppDecoration.outlineOnErrorContainer
                   .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
               child: Text("lbl_3".tr,
                   style: CustomTextStyles.labelMediumOnErrorContainer))
          ])));
 }

 Widget _buildAcivityRow({VoidCallback? onTap}) {
  return GestureDetector(
      onTap: onTap,
      child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(16.h),
          decoration: AppDecoration.fillOnErrorContainer,
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
           CustomImageView(fit: BoxFit.fill,
               imagePath: ImageConstant.notificition,
               height: 24.adaptSize,
               width: 24.adaptSize),
           Padding(
               padding: EdgeInsets.only(left: 16.h, top: 2.v, bottom: 3.v),
               child: Text("Activity".tr,
                   style: CustomTextStyles.labelLargePoppinsBlack900)),
           Spacer(),
           Container(
               width: 20.adaptSize,
               padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 2.v),
               decoration: AppDecoration.outlineOnErrorContainer
                   .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
               child: Text("lbl_3".tr,
                   style: CustomTextStyles.labelMediumOnErrorContainer))
          ])));
 }

 /// Navigates to the previous screen.
 onTapImgArrowLeft() {
  Get.back();
 }
}
