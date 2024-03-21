import '../profile_screen/controller/profile_controller.dart';
import 'controller/birthday_choose_date_controller.dart';
import 'package:flutter/material.dart';
import 'package:vibra_verve/core/app_export.dart';
import 'package:vibra_verve/widgets/custom_elevated_button.dart';

class BirthdayChooseDateScreen extends GetWidget<BirthdayChooseDateController> {
 const BirthdayChooseDateScreen({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
  mediaQueryData = MediaQuery.of(context);
  return SafeArea(
      child: Scaffold(
          body: SizedBox(
              width: double.maxFinite,
              child: Column(children: [
               _buildArrowLeftRow(),
               Divider(),
               SizedBox(height: 16.v),
               Align(
                   alignment: Alignment.centerLeft,
                   child: Padding(
                       padding: EdgeInsets.only(left: 16.h),
                       child: Text("lbl_your_birhday".tr,
                           style: CustomTextStyles.titleMediumIndigo900_1))),
               SizedBox(height: 7.v),
               Padding(
                   padding: EdgeInsets.symmetric(horizontal: 16.h),
                   child: Column(children: [
                    _buildDateRow(context),
                   ])),
               SizedBox(height: 5.v)
              ])),
          bottomNavigationBar: _buildSave()));
 }

 /// Section Widget
 Widget _buildArrowLeftRow() {
  return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 26.v),
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
           padding: EdgeInsets.only(left: 12.h),
           child: Text("lbl_birthday".tr,
               style: CustomTextStyles.titleMediumIndigo900_1))
      ]));
 }

 /// Section Widget
 Widget _buildDateRow(BuildContext context) {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 11.v),
      decoration: AppDecoration.outlinePrimary2
          .copyWith(borderRadius: BorderRadiusStyle.circleBorder3),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Padding(
               padding: EdgeInsets.only(top: 2.v, bottom: 3.v),
            child: Obx(() {
             // Use Obx to automatically update the widget when selectedDate changes
             return Text(
              controller.focusedDay.value != null
                  ? "${controller.focusedDay.value!.day}"
                  "/${controller.focusedDay.value!.month}"
                  "/${controller.focusedDay.value!.year}"
                  : "lbl_12_12_2020".tr,
              style: theme.textTheme.labelLarge,
             );
            }),),
           CustomImageView(onTap: ()async{
             DateTime? datepicked =await showDatePicker(
                 context: context,
                 initialDate: controller.focusedDay.value ?? DateTime.now(),
                 firstDate: DateTime(1800),
                 lastDate: DateTime.now());

             if (datepicked != null) {
              // Update the selected date using the controller
              controller.focusedDay.value = datepicked;
             }
           },
               imagePath: ImageConstant.imgSystemIcon24pxDate,
               height: 24.adaptSize,
               width: 24.adaptSize)
          ]));
 }

 /// Section Widget
 Widget _buildSave() {
  return CustomElevatedButton(onPressed: () {
    ProfileController.to.selectedDate.value = controller.focusedDay.value;
    Get.toNamed('/profile_screen');
  },
      height: 64.v,
      text: "lbl_save".tr,
      margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v),
      buttonTextStyle: CustomTextStyles.titleMediumOnErrorContainer);
 }

 /// Navigates to the previous screen.
 onTapImgArrowLeft() {
  Get.back();
 }
}