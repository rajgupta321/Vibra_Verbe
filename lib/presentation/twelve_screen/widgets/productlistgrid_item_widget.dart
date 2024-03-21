import '../controller/twelve_controller.dart';
import '../models/productlistgrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vibra_verve/core/app_export.dart';

// ignore: must_be_immutable
class ProductlistgridItemWidget extends StatelessWidget {
  ProductlistgridItemWidget(
    this.productlistgridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductlistgridItemModel productlistgridItemModelObj;

  var controller = Get.find<TwelveController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.only(right: 6.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 10.h,
                  vertical: 15.v,
                ),
                decoration: AppDecoration.outlineBlack9002.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage5,
                      height: 125.adaptSize,
                      width: 125.adaptSize,
                      margin: EdgeInsets.only(left: 2.h),
                    ),
                    SizedBox(height: 24.v),
                    Obx(
                      () => Text(
                        productlistgridItemModelObj.productName!.value,
                        style: CustomTextStyles.titleSmallDMSansGray90001Medium,
                      ),
                    ),
                    SizedBox(height: 4.v),
                    Obx(
                      () => Text(
                        productlistgridItemModelObj.productPrice!.value,
                        style: CustomTextStyles.labelLargeDMSansRed50001,
                      ),
                    ),
                    SizedBox(height: 8.v),
                    SizedBox(
                      width: 135.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 93.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 29.h,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgStar,
                                        height: 11.adaptSize,
                                        width: 11.adaptSize,
                                        margin:
                                            EdgeInsets.symmetric(vertical: 1.v),
                                      ),
                                      Obx(
                                        () => Text(
                                          productlistgridItemModelObj
                                              .ratingText!.value,
                                          style: CustomTextStyles
                                              .bodySmallDMSansGray90001,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Obx(
                                  () => Text(
                                    productlistgridItemModelObj
                                        .reviewCount!.value,
                                    style: CustomTextStyles
                                        .bodySmallDMSansGray90001,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgRegularMenuDotsVertical,
                            height: 14.adaptSize,
                            width: 14.adaptSize,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 6.h),
                padding: EdgeInsets.symmetric(vertical: 15.v),
                decoration: AppDecoration.outlineBlack9001.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 13.v),
                    Obx(
                      () => CustomImageView(
                        imagePath:
                            productlistgridItemModelObj.productImage!.value,
                        height: 116.v,
                        width: 149.h,
                        margin: EdgeInsets.only(left: 7.h),
                      ),
                    ),
                    SizedBox(height: 20.v),
                    Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: Obx(
                        () => Text(
                          productlistgridItemModelObj.productName1!.value,
                          style:
                              CustomTextStyles.titleSmallDMSansGray90001Medium,
                        ),
                      ),
                    ),
                    SizedBox(height: 4.v),
                    Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: Obx(
                        () => Text(
                          productlistgridItemModelObj.productPrice1!.value,
                          style: CustomTextStyles.labelLargeDMSansRed50001,
                        ),
                      ),
                    ),
                    SizedBox(height: 8.v),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 135.h,
                        margin: EdgeInsets.symmetric(horizontal: 10.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 93.h,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 29.h,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgStar,
                                          height: 11.adaptSize,
                                          width: 11.adaptSize,
                                          margin: EdgeInsets.symmetric(
                                              vertical: 1.v),
                                        ),
                                        Obx(
                                          () => Text(
                                            productlistgridItemModelObj
                                                .ratingText1!.value,
                                            style: CustomTextStyles
                                                .bodySmallDMSansGray90001,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Obx(
                                    () => Text(
                                      productlistgridItemModelObj
                                          .reviewCount1!.value,
                                      style: CustomTextStyles
                                          .bodySmallDMSansGray90001,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            CustomImageView(
                              imagePath:
                                  ImageConstant.imgRegularMenuDotsVertical,
                              height: 14.adaptSize,
                              width: 14.adaptSize,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 21.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.only(right: 6.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 10.h,
                  vertical: 15.v,
                ),
                decoration: AppDecoration.outlineBlack9001.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 10.v),
                    Obx(
                      () => CustomImageView(
                        imagePath:
                            productlistgridItemModelObj.productImage1!.value,
                        height: 115.v,
                        width: 101.h,
                        margin: EdgeInsets.only(left: 14.h),
                      ),
                    ),
                    SizedBox(height: 24.v),
                    Obx(
                      () => Text(
                        productlistgridItemModelObj.productName2!.value,
                        style: CustomTextStyles.titleSmallDMSansGray90001Medium,
                      ),
                    ),
                    SizedBox(height: 4.v),
                    Obx(
                      () => Text(
                        productlistgridItemModelObj.productPrice2!.value,
                        style: CustomTextStyles.labelLargeDMSansRed50001,
                      ),
                    ),
                    SizedBox(height: 8.v),
                    SizedBox(
                      width: 135.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 93.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 29.h,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgStar,
                                        height: 11.adaptSize,
                                        width: 11.adaptSize,
                                        margin:
                                            EdgeInsets.symmetric(vertical: 1.v),
                                      ),
                                      Obx(
                                        () => Text(
                                          productlistgridItemModelObj
                                              .ratingText2!.value,
                                          style: CustomTextStyles
                                              .bodySmallDMSansGray90001,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Obx(
                                  () => Text(
                                    productlistgridItemModelObj
                                        .reviewCount2!.value,
                                    style: CustomTextStyles
                                        .bodySmallDMSansGray90001,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgRegularMenuDotsVertical,
                            height: 14.adaptSize,
                            width: 14.adaptSize,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 6.h),
                padding: EdgeInsets.symmetric(vertical: 13.v),
                decoration: AppDecoration.outlineBlack9001.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage5,
                      height: 155.v,
                      width: 146.h,
                      alignment: Alignment.centerRight,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: Obx(
                        () => Text(
                          productlistgridItemModelObj.productName3!.value,
                          style:
                              CustomTextStyles.titleSmallDMSansGray90001Medium,
                        ),
                      ),
                    ),
                    SizedBox(height: 4.v),
                    Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: Obx(
                        () => Text(
                          productlistgridItemModelObj.productPrice3!.value,
                          style: CustomTextStyles.labelLargeDMSansRed50001,
                        ),
                      ),
                    ),
                    SizedBox(height: 8.v),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 135.h,
                        margin: EdgeInsets.symmetric(horizontal: 10.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 93.h,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 29.h,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgStar,
                                          height: 11.adaptSize,
                                          width: 11.adaptSize,
                                          margin: EdgeInsets.symmetric(
                                              vertical: 1.v),
                                        ),
                                        Obx(
                                          () => Text(
                                            productlistgridItemModelObj
                                                .ratingText3!.value,
                                            style: CustomTextStyles
                                                .bodySmallDMSansGray90001,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Obx(
                                    () => Text(
                                      productlistgridItemModelObj
                                          .reviewCount3!.value,
                                      style: CustomTextStyles
                                          .bodySmallDMSansGray90001,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            CustomImageView(
                              imagePath:
                                  ImageConstant.imgRegularMenuDotsVertical,
                              height: 14.adaptSize,
                              width: 14.adaptSize,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
