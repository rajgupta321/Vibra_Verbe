import '../controller/splash_controller.dart';
import '../models/productpromotionsection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vibra_verve/core/app_export.dart';
import 'package:vibra_verve/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class ProductpromotionsectionItemWidget extends StatelessWidget {
  ProductpromotionsectionItemWidget(
    this.productpromotionsectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductpromotionsectionItemModel productpromotionsectionItemModelObj;

  var controller = Get.find<SplashController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Row(
              children: [
                Text(
                  "lbl_30".tr,
                  style: CustomTextStyles.displayMediumRoboto,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 4.h,
                    top: 10.v,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "lbl_discount".tr,
                    style: theme.textTheme.headlineMedium,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 27.h),
            child: Text(
              "lbl_in_technology".tr,
              style: CustomTextStyles.headlineSmallRoboto,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 35.h),
            child: Text(
              "lbl_free_shipping".tr.toUpperCase(),
              style: CustomTextStyles.labelLargeRobotoOnErrorContainerSemiBold,
            ),
          ),
          SizedBox(height: 98.v),
          Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              height: 250.v,
              width: 234.h,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img5eb4156d7834b2000433266d,
                    height: 165.v,
                    width: 198.h,
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(right: 4.h),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgWhiteHeroZoom,
                    height: 97.v,
                    width: 146.h,
                    alignment: Alignment.bottomRight,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgAuGalaxyBuds,
                    height: 85.v,
                    width: 106.h,
                    alignment: Alignment.bottomLeft,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 14.v),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 15.h),
              child: Text(
                "msg_valid_from_27_03".tr,
                style: CustomTextStyles.labelLargeRobotoOnErrorContainer,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
