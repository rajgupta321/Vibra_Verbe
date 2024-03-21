import '../controller/eleven_controller.dart';
import '../models/productcomponent3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vibra_verve/core/app_export.dart';

// ignore: must_be_immutable
class Productcomponent3ItemWidget extends StatelessWidget {
  Productcomponent3ItemWidget(
    this.productcomponent3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productcomponent3ItemModel productcomponent3ItemModelObj;

  var controller = Get.find<ElevenController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 156.h,
      child: Align(
        alignment: Alignment.topRight,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 4.h,
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
                  imagePath: productcomponent3ItemModelObj.productImage!.value,
                  height: 145.adaptSize,
                  width: 145.adaptSize,
                  margin: EdgeInsets.only(left: 3.h),
                ),
              ),
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(left: 6.h),
                child: Obx(
                  () => Text(
                    productcomponent3ItemModelObj.productName!.value,
                    style: CustomTextStyles.titleSmallDMSansGray90001Medium,
                  ),
                ),
              ),
              SizedBox(height: 4.v),
              Padding(
                padding: EdgeInsets.only(left: 6.h),
                child: Obx(
                  () => Text(
                    productcomponent3ItemModelObj.productPrice!.value,
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
                                    productcomponent3ItemModelObj
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
                              productcomponent3ItemModelObj
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
