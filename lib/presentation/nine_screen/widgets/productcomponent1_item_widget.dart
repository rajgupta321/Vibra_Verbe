import '../controller/nine_controller.dart';
import '../models/productcomponent1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vibra_verve/core/app_export.dart';

// ignore: must_be_immutable
class Productcomponent1ItemWidget extends StatelessWidget {
  Productcomponent1ItemWidget(
    this.productcomponent1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productcomponent1ItemModel productcomponent1ItemModelObj;

  var controller = Get.find<NineController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 156.h,
      child: Align(
        alignment: Alignment.topRight,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 2.h,
            vertical: 7.v,
          ),
          decoration: AppDecoration.outlineBlack9001.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: productcomponent1ItemModelObj.productImage!.value,
                  height: 145.adaptSize,
                  width: 145.adaptSize,
                ),
              ),
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Obx(
                  () => Text(
                    productcomponent1ItemModelObj.productName!.value,
                    style: CustomTextStyles.titleSmallDMSansGray90001Medium,
                  ),
                ),
              ),
              SizedBox(height: 4.v),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Obx(
                  () => Text(
                    productcomponent1ItemModelObj.productPrice!.value,
                    style: CustomTextStyles.labelLargeDMSansRed50001,
                  ),
                ),
              ),
              SizedBox(height: 8.v),
              Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 93.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 29.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgStar,
                                  height: 11.adaptSize,
                                  width: 11.adaptSize,
                                  margin: EdgeInsets.symmetric(vertical: 1.v),
                                ),
                                Obx(
                                  () => Text(
                                    productcomponent1ItemModelObj
                                        .productRating!.value,
                                    style: CustomTextStyles
                                        .bodySmallDMSansGray90001,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Obx(
                            () => Text(
                              productcomponent1ItemModelObj
                                  .productReviews!.value,
                              style: CustomTextStyles.bodySmallDMSansGray90001,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgRegularMenuDotsVertical,
                      height: 14.adaptSize,
                      width: 14.adaptSize,
                      margin: EdgeInsets.only(left: 28.h),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8.v),
            ],
          ),
        ),
      ),
    );
  }
}
