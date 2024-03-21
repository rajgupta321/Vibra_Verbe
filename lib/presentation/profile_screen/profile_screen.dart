import 'controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:vibra_verve/core/app_export.dart';
import 'package:vibra_verve/widgets/app_bar/appbar_leading_image.dart';
import 'package:vibra_verve/widgets/app_bar/appbar_subtitle_seven.dart';
import 'package:vibra_verve/widgets/app_bar/custom_app_bar.dart';

class ProfileScreen extends GetWidget<ProfileController> {
 const ProfileScreen({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
  mediaQueryData = MediaQuery.of(context);
  DateTime? selectedDate = Get.arguments as DateTime?;

  return SafeArea(
      child: Scaffold(
          appBar: _buildAppBar(),
          body: SizedBox(
              width: double.maxFinite,
              child: Column(children: [
               Divider(),
               SizedBox(height: 23.v),
               Align(
                   alignment: Alignment.centerLeft,
                   child: Padding(
                       padding: EdgeInsets.only(left: 16.h),
                       child: Row(children: [
                        CustomImageView(onTap: () {

                        },
                            imagePath: ImageConstant.imgProfilePicture,
                            height: 72.adaptSize,
                            width: 72.adaptSize,
                            radius: BorderRadius.circular(36.h)),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 16.h, top: 13.v, bottom: 13.v),
                            child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                 TextButton(onPressed:() {
                                   Get.toNamed('/change_name_screen');
                                 }, child: Text("lbl_raj_gupta".tr,
                                     style:
                                     theme.textTheme.titleSmall),style: ButtonStyle( )),
                                 // SizedBox(height: 6.v),
                                 TextButton(onPressed: () {

                                 }, child: Text("lbl_derlaxy".tr,
                                     style: theme.textTheme.bodySmall),)
                                ])),
                       ]))),
               SizedBox(height: 32.v),
               _buildBirthday(onTap: (){
                Get.toNamed('/gender_choose_screen');
               },
                   systemIconDate: ImageConstant.imgSystemIcon24pxGender,
                   birthday: "lbl_gender".tr,
                   date: "lbl_male".tr),
               _buildBirthday(onTap: (){
                Get.toNamed('/birthday_choose_date_screen');
               },
                   systemIconDate: ImageConstant.imgSystemIcon24pxDate,
                   birthday: "lbl_birthday".tr,
                 date: "${ProfileController.to.selectedDate.value?.day ?? "12"}"
                     "/${ProfileController.to.selectedDate.value?.month ?? "12"}"
                     "/${ProfileController.to.selectedDate.value?.year ?? "2000"}",),
               _buildBirthday(onTap: (){
                 Get.toNamed('/email_screen');
               },
                   systemIconDate: ImageConstant.imgSystemIcon24pxMessage,
                   birthday: "lbl_email".tr,
                   date: "msg_abc123_gmail_com".tr),
               _buildBirthday(onTap: (){
                 Get.toNamed('/phone_number_screen');
               },
                   systemIconDate: ImageConstant.imgSystemIcon24pxCredit,
                   birthday: "lbl_phone_number".tr,
                   date: "lbl_307_555_0133".tr),
               SizedBox(height: 5.v),
               _buildBirthday(onTap: (){Get.toNamed('/change_password_screen');},
                   systemIconDate: ImageConstant.imgTrophy,
                   birthday: "lbl_change_password".tr,
                   date: "lbl4".tr)
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
          text: "lbl_profile".tr, margin: EdgeInsets.only(left: 12.h)),
      styleType: Style.bgFill_1);
 }

 /// Common widget
 Widget _buildBirthday({VoidCallback? onTap,
  required String systemIconDate,
  required String birthday,
  required String date,
 }) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 10.v),
        decoration: AppDecoration.fillOnErrorContainer,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
         CustomImageView(
             imagePath: systemIconDate,
             height: 24.adaptSize,
             width: 24.adaptSize,
             margin: EdgeInsets.symmetric(vertical: 4.v)),
         Padding(
             padding: EdgeInsets.only(left: 16.h, top: 9.v),
             child: Text(birthday,
                 style: theme.textTheme.titleMedium!
                     .copyWith(color: appTheme.black900))),
         Spacer(),
         Padding(
             padding: EdgeInsets.only(top: 7.v, bottom: 8.v),
             child: Text(date,
                 style: theme.textTheme.bodySmall!
                     .copyWith(color: appTheme.blueGray300))),
         CustomImageView(
             imagePath: ImageConstant.imgSystemIcon24pxRight,
             height: 24.adaptSize,
             width: 24.adaptSize,
             margin: EdgeInsets.only(left: 16.h, top: 4.v, bottom: 4.v))
        ])),
  );
 }

 /// Navigates to the previous screen.
 onTapArrowLeft() {
  Get.back();
 }
}
