import 'controller/notification_feed_controller.dart';
import 'package:flutter/material.dart';
import 'package:vibra_verve/core/app_export.dart';
import 'package:vibra_verve/widgets/app_bar/appbar_leading_image.dart';
import 'package:vibra_verve/widgets/app_bar/appbar_subtitle_seven.dart';
import 'package:vibra_verve/widgets/app_bar/custom_app_bar.dart';

class NotificationFeedScreen extends GetWidget<NotificationFeedController> {
 const NotificationFeedScreen({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
  mediaQueryData = MediaQuery.of(context);
  return SafeArea(
      child: Scaffold(
          appBar: _buildAppBar(),
          body: SizedBox(
              width: double.maxFinite,
              child: Column(children: [
               Divider(),
               _buildFeedList01(
                   newProductText: "lbl_new_product".tr,
                   samsungGalaxyMsText: "msg_samsung_galaxy_m31s".tr,
                   timeText: "msg_june_3_2023_5_06".tr),
               _buildFeedList01(
                   newProductText: "lbl_new_product".tr,
                   samsungGalaxyMsText: "msg_samsung_galaxy_m31s".tr,
                   timeText: "msg_june_3_2023_5_06".tr),
               _buildFeedList02(
                   newProductText: "lbl_new_product".tr,
                   samsungGalaxyMsText: "msg_samsung_galaxy_m31s".tr,
                   timeText: "msg_june_3_2023_5_06".tr),
               SizedBox(height: 5.v),
               _buildFeedList02(
                   newProductText: "lbl_new_product".tr,
                   samsungGalaxyMsText: "msg_samsung_galaxy_m31s".tr,
                   timeText: "msg_june_3_2023_5_06".tr)
              ]))));
 }

 /// Section Widget
 PreferredSizeWidget _buildAppBar() {
  return CustomAppBar(
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
          imagePath: ImageConstant.imgArrowLeftBlueGray300,
          margin: EdgeInsets.only(left: 16.h, top: 26.v, bottom: 28.v),
          onTap: () {
           onTapArrowLeft();
          }),
      title: AppbarSubtitleSeven(
          text: "lbl_feed".tr, margin: EdgeInsets.only(left: 12.h)),
      styleType: Style.bgFill_1);
 }

 /// Common widget
 Widget _buildFeedList01({
  required String newProductText,
  required String samsungGalaxyMsText,
  required String timeText,
 }) {
  return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 16.v),
      decoration: AppDecoration.fillOnErrorContainer,
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
       CustomImageView(fit: BoxFit.contain,
           imagePath: ImageConstant.imgImage1468,
           height: 58.v,
           width: 63.h,
           margin: EdgeInsets.only(top: 11.v, bottom: 19.v)),
       Padding(
           padding: EdgeInsets.only(left: 18.h),
           child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                Text(newProductText,
                    style: CustomTextStyles.titleSmallBold
                        .copyWith(color: appTheme.black900)),
                SizedBox(height: 6.v),
                SizedBox(
                    width: 196.h,
                    child: Text(samsungGalaxyMsText,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodySmall!.copyWith(
                            color: appTheme.blueGray300, height: 1.80))),
                SizedBox(height: 1.v),
                Text(timeText,
                    style: CustomTextStyles.bodySmallBlack90010
                        .copyWith(color: appTheme.black900))
               ]))
      ]));
 }

 /// Common widget
 Widget _buildFeedList02({
  required String newProductText,
  required String samsungGalaxyMsText,
  required String timeText,
 }) {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 16.v),
      decoration: AppDecoration.fillOnErrorContainer,
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
       CustomImageView(fit:BoxFit.contain,
           imagePath: ImageConstant.imgImage1468,
           height: 58.v,
           width: 63.h,
           margin: EdgeInsets.only(top: 11.v, bottom: 19.v)),
       Padding(
           padding: EdgeInsets.only(left: 18.h),
           child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                Text(newProductText,
                    style: CustomTextStyles.titleSmallBold
                        .copyWith(color: appTheme.black900)),
                SizedBox(height: 6.v),
                SizedBox(
                    width: 196.h,
                    child: Text(samsungGalaxyMsText,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodySmall!.copyWith(
                            color: appTheme.blueGray300, height: 1.80))),
                SizedBox(height: 1.v),
                Text(timeText,
                    style: CustomTextStyles.bodySmallBlack90010
                        .copyWith(color: appTheme.black900))
               ]))
      ]));
 }

 /// Navigates to the previous screen.
 onTapArrowLeft() {
  Get.back();
 }
}