import 'package:vibra_verve/presentation/account_page/account_page.dart';

import 'controller/add_address_controller.dart';
import 'package:flutter/material.dart';
import 'package:vibra_verve/core/app_export.dart';
import 'package:vibra_verve/widgets/app_bar/appbar_subtitle_seven.dart';
import 'package:vibra_verve/widgets/app_bar/appbar_title_image.dart';
import 'package:vibra_verve/widgets/app_bar/custom_app_bar.dart';
import 'package:vibra_verve/widgets/custom_drop_down.dart';
import 'package:vibra_verve/widgets/custom_elevated_button.dart';
import 'package:vibra_verve/widgets/custom_text_form_field.dart';

class AddAddressScreen extends GetWidget<AddAddressController> {
 const AddAddressScreen({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
  mediaQueryData = MediaQuery.of(context);
  return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: _buildAppBar(),
          body: SizedBox(
              width: double.maxFinite,
              child: Column(children: [
               SizedBox(height: 15.v),
               Expanded(
                   child: SingleChildScrollView(
                       child: Padding(
                           padding: EdgeInsets.only(
                               left: 16.h, right: 16.h, bottom: 5.v),
                           child: Column(children: [
                            _buildCountry(),
                            SizedBox(height: 23.v),
                            _buildFirstName(),
                            SizedBox(height: 23.v),
                            _buildLastName(),
                            SizedBox(height: 23.v),
                            _buildStreetAddress(),
                            SizedBox(height: 23.v),
                            _buildStreetAddress2(),
                            SizedBox(height: 24.v),
                            _buildCity(),
                            SizedBox(height: 23.v),
                            _buildStateProvinceRegion(),
                            SizedBox(height: 24.v),
                            _buildZipCode(),
                            SizedBox(height: 23.v),
                            _buildPhoneNumber()
                           ]))))
              ])),
          bottomNavigationBar: _buildAddAddress()));
 }

 /// Section Widget
 PreferredSizeWidget _buildAppBar() {
  return CustomAppBar(
      height: 123.v,
      centerTitle: true,
      title: Padding(
          padding: EdgeInsets.only(top: 70.v),
          child: Column(children: [
           Padding(
               padding: EdgeInsets.only(left: 16.h, right: 214.h),
               child: Row(children: [
                AppbarTitleImage(
                    imagePath: ImageConstant.imgArrowLeftBlueGray300,
                    onTap: () {
                     onTapArrowLeft();
                    }),
                AppbarSubtitleSeven(
                    text: "lbl_add_address".tr,
                    margin: EdgeInsets.only(left: 12.h))
               ])),
           SizedBox(height: 27.v),
           SizedBox(width: double.maxFinite, child: Divider())
          ])),
      styleType: Style.bgFill_3);
 }

 /// Section Widget
 Widget _buildCountry() {
  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
   Text("msg_country_or_region".tr, style: theme.textTheme.titleSmall),
   SizedBox(height: 11.v),
   CustomDropDown(
       icon: Container(
           margin: EdgeInsets.fromLTRB(30.h, 12.v, 16.h, 12.v),
           child: CustomImageView(
               imagePath: ImageConstant.imgSystemIcon24pxBottom,
               height: 24.adaptSize,
               width: 24.adaptSize)),
       hintText: "lbl_united_states".tr,
       items: controller.addAddressModelObj.value.dropdownItemList!.value,
       onChanged: (value) {
        controller.onSelected(value);
       })
  ]);
 }

 /// Section Widget
 Widget _buildFirstName() {
  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
   Text("lbl_first_name".tr, style: theme.textTheme.titleSmall),
   SizedBox(height: 12.v),
   CustomTextFormField(controller: controller.firstNameController)
  ]);
 }

 /// Section Widget
 Widget _buildLastName() {
  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
   Text("lbl_last_name".tr, style: theme.textTheme.titleSmall),
   SizedBox(height: 12.v),
   CustomTextFormField(controller: controller.lastNameController)
  ]);
 }

 /// Section Widget
 Widget _buildStreetAddress() {
  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
   Text("lbl_street_address".tr, style: theme.textTheme.titleSmall),
   SizedBox(height: 12.v),
   CustomTextFormField(controller: controller.streetaddressController)
  ]);
 }

 /// Section Widget
 Widget _buildStreetAddress2() {
  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
   Text("msg_street_address_2".tr, style: theme.textTheme.titleSmall),
   SizedBox(height: 12.v),
   CustomTextFormField(controller: controller.streetaddressController1)
  ]);
 }

 /// Section Widget
 Widget _buildCity() {
  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
   Text("lbl_city".tr, style: theme.textTheme.titleSmall),
   SizedBox(height: 11.v),
   CustomTextFormField(controller: controller.cityController)
  ]);
 }

 /// Section Widget
 Widget _buildStateProvinceRegion() {
  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
   Text("msg_state_province_region".tr, style: theme.textTheme.titleSmall),
   SizedBox(height: 12.v),
   CustomTextFormField(controller: controller.stateProvinceRegionController)
  ]);
 }

 /// Section Widget
 Widget _buildZipCode() {
  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
   Text("lbl_zip_code".tr, style: theme.textTheme.titleSmall),
   SizedBox(height: 11.v),
   CustomTextFormField(controller: controller.zipcodeController)
  ]);
 }

 /// Section Widget
 Widget _buildPhoneNumber() {
  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
   Text("lbl_phone_number".tr, style: theme.textTheme.titleSmall),
   SizedBox(height: 12.v),
   CustomTextFormField(
       controller: controller.phoneNumberController,
       textInputAction: TextInputAction.done)
  ]);
 }

 /// Section Widget
 Widget _buildAddAddress() {
  return CustomElevatedButton(onPressed: (){
   Get.back();
  },
      text: "lbl_add_address".tr,
      margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v));
 }

 /// Navigates to the previous screen.
 onTapArrowLeft() {
  Get.back();
 }
}
