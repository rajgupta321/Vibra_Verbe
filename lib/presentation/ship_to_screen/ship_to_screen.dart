import '../ship_to_screen/widgets/userprofilelist_item_widget.dart';
import 'controller/ship_to_controller.dart';
import 'models/userprofilelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vibra_verve/core/app_export.dart';
import 'package:vibra_verve/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:vibra_verve/widgets/app_bar/appbar_title_image.dart';
import 'package:vibra_verve/widgets/app_bar/custom_app_bar.dart';
import 'package:vibra_verve/widgets/custom_elevated_button.dart';

class ShipToScreen extends GetWidget<ShipToController> {
 const ShipToScreen({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
  mediaQueryData = MediaQuery.of(context);
  return SafeArea(
      child: Scaffold(
          appBar: _buildAppBar(),
          body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 24.v),
              child: Column(children: [
               SizedBox(height: 13.v),
               _buildUserProfileList()
              ])),
          bottomNavigationBar: _buildNextButton()));
 }

 /// Section Widget
 PreferredSizeWidget _buildAppBar() {
  return CustomAppBar(
      height: 56.v,
      centerTitle: true,
      title: Column(children: [
       Padding(
           padding: EdgeInsets.symmetric(horizontal: 16.h),
           child: Row(children: [
            AppbarTitleImage(
                imagePath: ImageConstant.imgArrowLeftBlueGray300,
                margin: EdgeInsets.only(bottom: 1.v),
                onTap: () {
                 onTapArrowLeft();
                }),
            AppbarSubtitleFour(
                text: "lbl_ship_to".tr,
                margin: EdgeInsets.only(left: 12.h, top: 1.v)),
            AppbarTitleImage(
                imagePath: ImageConstant.imgSystemIcon24pxPlus,
                margin: EdgeInsets.only(left: 221.h, bottom: 1.v))
           ])),
       SizedBox(height: 26.v),
       SizedBox(width: double.maxFinite, child: Divider())
      ]),
      styleType: Style.bgFill_2);
 }

 /// Section Widget
 Widget _buildUserProfileList() {
  return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Obx(() => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
           return SizedBox(height: 16.v);
          },
          itemCount: controller
              .shipToModelObj.value.userprofilelistItemList.value.length,
          itemBuilder: (context, index) {
           UserprofilelistItemModel model = controller
               .shipToModelObj.value.userprofilelistItemList.value[index];
           return UserprofilelistItemWidget(model);
          })));
 }

 /// Section Widget
 Widget _buildNextButton() {
  return CustomElevatedButton(onPressed: (){
   Get.toNamed('/add_payment_screen');
  },
      text: "lbl_next".tr,
      margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v));
 }

 /// Navigates to the previous screen.
 onTapArrowLeft() {
  Get.back();
 }
}