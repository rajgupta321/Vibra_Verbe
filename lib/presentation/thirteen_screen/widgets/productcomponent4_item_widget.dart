import '../controller/thirteen_controller.dart';
import '../models/productcomponent4_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vibra_verve/core/app_export.dart';

// ignore: must_be_immutable
class Productcomponent4ItemWidget extends StatelessWidget {
  Productcomponent4ItemWidget(
    this.productcomponent4ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productcomponent4ItemModel productcomponent4ItemModelObj;

  var controller = Get.find<ThirteenController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 156.h,
      child: Align(
        alignment: Alignment.topRight,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 14.v,
          ),
          decoration: AppDecoration.outlineBlack9001.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: productcomponent4ItemModelObj.productImage!.value,
                  height: 128.v,
                  width: 84.h,
                  margin: EdgeInsets.only(left: 14.h),
                ),
              ),
              SizedBox(height: 22.v),
              Obx(
                () => Text(
                  productcomponent4ItemModelObj.productName!.value,
                  style: CustomTextStyles.titleSmallDMSansGray90001Medium,
                ),
              ),
              SizedBox(height: 4.v),
              Obx(
                () => Text(
                  productcomponent4ItemModelObj.productPrice!.value,
                  style: CustomTextStyles.labelLargeDMSansRed50001,
                ),
              ),
              SizedBox(height: 8.v),
              Row(
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
                                  productcomponent4ItemModelObj
                                      .ratingText!.value,
                                  style:
                                      CustomTextStyles.bodySmallDMSansGray90001,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Obx(
                          () => Text(
                            productcomponent4ItemModelObj.reviewCount!.value,
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
            ],
          ),
        ),
      ),
    );
  }
}
