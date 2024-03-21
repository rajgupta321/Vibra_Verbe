import '../controller/home_controller.dart';
import '../models/productcard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vibra_verve/core/app_export.dart';

// ignore: must_be_immutable
class ProductcardItemWidget extends StatelessWidget {
  ProductcardItemWidget(
    this.productcardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductcardItemModel productcardItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      width: 128.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          Container(
            width: 69.h,
            margin: EdgeInsets.only(left: 2.h),
            padding: EdgeInsets.symmetric(
              horizontal: 7.h,
              vertical: 1.v,
            ),
            decoration: AppDecoration.fillOnErrorContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Obx(
              () => Text(
                productcardItemModelObj.freeshipping!.value,
                style: CustomTextStyles.bodySmallPrimary8,
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Obx(
            () => CustomImageView(
              imagePath: productcardItemModelObj.image!.value,
              height: 73.v,
              width: 115.h,
            ),
          ),
          SizedBox(height: 1.v),
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Obx(
              () => Text(
                productcardItemModelObj.title!.value,
                style: CustomTextStyles.labelMediumGray800,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Obx(
              () => Text(
                productcardItemModelObj.price!.value,
                style: CustomTextStyles.labelLargeGray800,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
