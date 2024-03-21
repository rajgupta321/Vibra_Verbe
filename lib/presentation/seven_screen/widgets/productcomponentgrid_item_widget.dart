import '../controller/seven_controller.dart';
import '../models/productcomponentgrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vibra_verve/core/app_export.dart';

// ignore: must_be_immutable
class ProductcomponentgridItemWidget extends StatelessWidget {
  ProductcomponentgridItemWidget(
    this.productcomponentgridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductcomponentgridItemModel productcomponentgridItemModelObj;

  var controller = Get.find<SevenController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
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
          children: [
            Obx(
              () => CustomImageView(
                imagePath: productcomponentgridItemModelObj.productImage!.value,
                height: 125.adaptSize,
                width: 125.adaptSize,
                margin: EdgeInsets.only(left: 2.h),
              ),
            ),
            SizedBox(height: 24.v),
            Obx(
              () => Text(
                productcomponentgridItemModelObj.productName!.value,
                style: CustomTextStyles.titleSmallDMSansGray90001Medium,
              ),
            ),
            SizedBox(height: 4.v),
            Obx(
              () => Text(
                productcomponentgridItemModelObj.productPrice!.value,
                style: CustomTextStyles.labelLargeDMSansRed50001,
              ),
            ),
            SizedBox(height: 8.v),
            Row(
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
                          productcomponentgridItemModelObj.ratingText!.value,
                          style: CustomTextStyles.bodySmallDMSansGray90001,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: Obx(
                    () => Text(
                      productcomponentgridItemModelObj.reviewCount!.value,
                      style: CustomTextStyles.bodySmallDMSansGray90001,
                    ),
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
          ],
        ),
      ),
    );
  }
}
