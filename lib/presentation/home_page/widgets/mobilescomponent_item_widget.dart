import '../controller/home_controller.dart';
import '../models/mobilescomponent_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vibra_verve/core/app_export.dart';

// ignore: must_be_immutable
class MobilescomponentItemWidget extends StatelessWidget {
  MobilescomponentItemWidget(
    this.mobilescomponentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );
   
  MobilescomponentItemModel mobilescomponentItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 99.adaptSize,
          width: 99.adaptSize,
          padding: EdgeInsets.symmetric(horizontal: 13.h),
          decoration: AppDecoration.outlineGrayF.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder15,
          ),
          child: Obx(
            () => CustomImageView(
              fit:BoxFit.contain ,
              imagePath: mobilescomponentItemModelObj.mobileImage!.value,
              height: 95.v,
              width: 69.h,
              alignment: Alignment.center,
            ),
          ),
        ),
        SizedBox(height: 7.v),
        Padding(
          padding: EdgeInsets.only(left: 22.h),
          child: Obx(
            () => Text(
              mobilescomponentItemModelObj.mobileText!.value,
              style: CustomTextStyles.bodySmallBlack900,
            ),
          ),
        ),
      ],
    );
  }
}
