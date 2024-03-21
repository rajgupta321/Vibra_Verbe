import '../order_details_screen/widgets/productcard3_item_widget.dart';
import 'controller/order_details_controller.dart';
import 'models/productcard3_item_model.dart';
import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:vibra_verve/core/app_export.dart';
import 'package:vibra_verve/widgets/custom_elevated_button.dart';

class OrderDetailsScreen extends GetWidget<OrderDetailsController> {
 const OrderDetailsScreen({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
  mediaQueryData = MediaQuery.of(context);
  return SafeArea(
      child: Scaffold(
          body: SizedBox(
              width: mediaQueryData.size.width,
              child: SingleChildScrollView(
                  child: Padding(
                      padding: EdgeInsets.only(bottom: 5.v),
                      child: Column(children: [
                       _buildArrowLeftRow(),
                       Divider(),
                       SizedBox(height: 15.v),
                       _buildTrackingRow(),
                       SizedBox(height: 24.v),
                       _buildProductColumn(),
                       SizedBox(height: 24.v),
                       _buildShippingDetailsColumn(),
                       SizedBox(height: 24.v),
                       _buildPaymentDetailsColumn()
                      ])))),
          bottomNavigationBar: _buildNotifyMeButton()));
 }

 /// Section Widget
 Widget _buildArrowLeftRow() {
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
           child: Text("lbl_order_details".tr,
               style: theme.textTheme.titleMedium))
      ]));
 }

 /// Section Widget
 Widget _buildTrackingRow() {
  return Padding(
      padding: EdgeInsets.only(left: 14.h, right: 19.h),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
       SizedBox(height: 57.v, width: 51.h),
       SingleChildScrollView(
           scrollDirection: Axis.horizontal,
           child: IntrinsicWidth(
               child: AnotherStepper(
                   iconHeight: 57,
                   iconWidth: 51,
                   stepperDirection: Axis.horizontal,
                   activeIndex: 0,
                   barThickness: 1,
                   inverted: true,
                   stepperList: [
                    StepperData(
                        iconWidget: Column(children: [
                         Container(
                             height: 24.adaptSize,
                             width: 24.adaptSize,
                             padding: EdgeInsets.symmetric(
                                 horizontal: 8.h, vertical: 9.v),
                             decoration: AppDecoration.fillPrimary1.copyWith(
                                 borderRadius: BorderRadiusStyle.circleBorder12),
                             child: CustomImageView(
                                 imagePath: ImageConstant.imgVector41,
                                 height: 5.v,
                                 width: 7.h,
                                 alignment: Alignment.bottomRight)),
                         Padding(
                             padding: EdgeInsets.only(top: 15.v),
                             child: Text("lbl_packing".tr,
                                 style: theme.textTheme.bodySmall))
                        ])),
                    StepperData(
                        iconWidget: Column(children: [
                         Container(
                             height: 24.adaptSize,
                             width: 24.adaptSize,
                             padding: EdgeInsets.symmetric(
                                 horizontal: 8.h, vertical: 9.v),
                             decoration: AppDecoration.fillPrimary1.copyWith(
                                 borderRadius: BorderRadiusStyle.circleBorder12),
                             child: CustomImageView(
                                 imagePath: ImageConstant.imgVector41,
                                 height: 5.v,
                                 width: 7.h,
                                 alignment: Alignment.bottomRight)),
                         Padding(
                             padding: EdgeInsets.only(top: 15.v),
                             child: Text("lbl_shipping".tr,
                                 style: theme.textTheme.bodySmall))
                        ])),
                    StepperData(
                        iconWidget: Column(children: [
                         Container(
                             height: 24.adaptSize,
                             width: 24.adaptSize,
                             padding: EdgeInsets.symmetric(
                                 horizontal: 8.h, vertical: 9.v),
                             decoration: AppDecoration.fillPrimary1.copyWith(
                                 borderRadius: BorderRadiusStyle.circleBorder12),
                             child: CustomImageView(
                                 imagePath: ImageConstant.imgVector41,
                                 height: 5.v,
                                 width: 7.h,
                                 alignment: Alignment.bottomRight)),
                         Padding(
                             padding: EdgeInsets.only(top: 15.v),
                             child: Text("lbl_arriving".tr,
                                 style: theme.textTheme.bodySmall))
                        ])),
                    StepperData(
                        iconWidget: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                             CustomImageView(
                                 imagePath: ImageConstant.imgCheckmarkBlue50,
                                 height: 24.adaptSize,
                                 width: 24.adaptSize,
                                 margin: EdgeInsets.only(left: 13.h)),
                             Padding(
                                 padding: EdgeInsets.only(top: 13.v),
                                 child: Text("lbl_success".tr,
                                     style: theme.textTheme.bodySmall))
                            ]))
                   ]))),
       SizedBox(height: 57.v, width: 49.h),
       Spacer(),
       SizedBox(height: 55.v, width: 53.h)
      ]));
 }

 /// Section Widget
 Widget _buildProductColumn() {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
       Text("lbl_product".tr, style: theme.textTheme.titleSmall),
       SizedBox(height: 12.v),
       Obx(() => ListView.separated(
           physics: NeverScrollableScrollPhysics(),
           shrinkWrap: true,
           separatorBuilder: (context, index) {
            return SizedBox(height: 8.v);
           },
           itemCount: controller
               .orderDetailsModelObj.value.productcard3ItemList.value.length,
           itemBuilder: (context, index) {
            Productcard3ItemModel model = controller.orderDetailsModelObj
                .value.productcard3ItemList.value[index];
            return Productcard3ItemWidget(model);
           }))
      ]));
 }

 /// Section Widget
 Widget _buildShippingDetailsColumn() {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
       Text("msg_shipping_details".tr, style: theme.textTheme.titleSmall),
       SizedBox(height: 11.v),
       Container(
           padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 11.v),
           decoration: AppDecoration.outlineBlue
               .copyWith(borderRadius: BorderRadiusStyle.circleBorder3),
           child: Column(
               mainAxisSize: MainAxisSize.min,
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                SizedBox(height: 6.v),
                _buildShippingRow(
                    shippingLabel: "lbl_date_shipping".tr,
                    posReggularLabel: "msg_january_16_2015".tr),
                SizedBox(height: 15.v),
                _buildShippingRow(
                    shippingLabel: "lbl_shipping".tr,
                    posReggularLabel: "lbl_pos_reggular".tr),
                SizedBox(height: 14.v),
                _buildShippingRow(
                    shippingLabel: "lbl_no_resi".tr,
                    posReggularLabel: "lbl_000192848573".tr),
                SizedBox(height: 15.v),
                _buildShippingRow(
                    shippingLabel: "lbl_address".tr,
                    posReggularLabel: "msg_2727_lakeshore_rd".tr)
               ]))
      ]));
 }

 /// Section Widget
 Widget _buildPaymentDetailsColumn() {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
       Padding(
           padding: EdgeInsets.only(left: 1.h),
           child: Text("lbl_payment_details".tr,
               style: theme.textTheme.titleSmall)),
       SizedBox(height: 11.v),
       Container(
           margin: EdgeInsets.only(right: 2.h),
           padding: EdgeInsets.all(15.h),
           decoration: AppDecoration.outlineBlue
               .copyWith(borderRadius: BorderRadiusStyle.circleBorder3),
           child: Column(
               mainAxisSize: MainAxisSize.min,
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                _buildShippingRow1(
                    shippingLabel: "lbl_items_3".tr,
                    priceLabel: "lbl_598_86".tr),
                SizedBox(height: 16.v),
                _buildShippingRow1(
                    shippingLabel: "lbl_shipping".tr,
                    priceLabel: "lbl_40_00".tr),
                SizedBox(height: 14.v),
                _buildShippingRow1(
                    shippingLabel: "lbl_import_charges".tr,
                    priceLabel: "lbl_128_00".tr),
                SizedBox(height: 12.v),
                Divider(),
                SizedBox(height: 10.v),
                _buildShippingRow2(
                    shippingLabel: "lbl_total_price".tr,
                    priceLabel: "lbl_766_86".tr)
               ]))
      ]));
 }

 /// Section Widget
 Widget _buildNotifyMeButton() {
  return CustomElevatedButton(
      height: 61.v,
      text: "lbl_notify_me".tr,
      margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 45.v),
      buttonTextStyle: CustomTextStyles.titleMediumOnErrorContainer_1);
 }

 /// Common widget
 Widget _buildShippingRow({
  required String shippingLabel,
  required String posReggularLabel,
 }) {
  return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
   Opacity(
       opacity: 0.5,
       child: Text(shippingLabel,
           style: CustomTextStyles.bodySmallBlack900_2
               .copyWith(color: appTheme.black900.withOpacity(0.53)))),
   Text(posReggularLabel,
       style: CustomTextStyles.bodySmallBlack900_1
           .copyWith(color: appTheme.black900))
  ]);
 }

 /// Common widget
 Widget _buildShippingRow1({
  required String shippingLabel,
  required String priceLabel,
 }) {
  return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
   Padding(
       padding: EdgeInsets.only(top: 1.v),
       child: Text(shippingLabel,
           style: theme.textTheme.bodySmall!
               .copyWith(color: appTheme.blueGray300))),
   Text(priceLabel,
       style: CustomTextStyles.bodySmallBlack900_1
           .copyWith(color: appTheme.black900))
  ]);
 }


 Widget _buildShippingRow2({
  required String shippingLabel,
  required String priceLabel,
 }) {
  return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
   Padding(
       padding: EdgeInsets.only(top: 1.v),
       child: Text(shippingLabel,
           style:TextStyle(fontWeight: FontWeight.bold,color: Colors.black))),
   Text(priceLabel,
       style: TextStyle(fontWeight: FontWeight.bold,color: Colors.teal))
  ]);
 }

 /// Navigates to the previous screen.
 onTapImgArrowLeft() {
  Get.back();
 }
}