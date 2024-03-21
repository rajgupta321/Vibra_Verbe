import '../controller/order_details_controller.dart';
import '../models/productcard3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vibra_verve/core/app_export.dart';

// ignore: must_be_immutable
class Productcard3ItemWidget extends StatelessWidget {
  Productcard3ItemWidget(
    this.productcard3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productcard3ItemModel productcard3ItemModelObj;

  var controller = Get.find<OrderDetailsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineBlue.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder3,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: productcard3ItemModelObj.image!.value,
              height: 69.adaptSize,
              width: 69.adaptSize,
              margin: EdgeInsets.only(bottom: 3.v),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 19.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 178.h,
                  child: Obx(
                    () => Text(
                      productcard3ItemModelObj.title!.value,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style:
                          CustomTextStyles.labelLargeBlack900SemiBold.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                ),
                Obx(
                  () => Text(
                    productcard3ItemModelObj.price!.value,
                    style: CustomTextStyles.labelLargePrimary,
                  ),
                ),
              ],
            ),
          ),
          Obx(
            () => CustomImageView(
              imagePath: productcard3ItemModelObj.image1!.value,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(
                left: 24.h,
                bottom: 48.v,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
