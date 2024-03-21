import '../controller/home_controller.dart';
import '../models/landingpageheadphone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vibra_verve/core/app_export.dart';
import 'package:vibra_verve/widgets/custom_elevated_button.dart';

class LandingpageheadphoneItemWidget extends StatelessWidget {
  LandingpageheadphoneItemWidget(
      this.landingpageheadphoneItemModelObj, {
        Key? key,
      }) : super(
    key: key,
  );

  LandingpageheadphoneItemModel landingpageheadphoneItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 253.h,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.only(
          top: 4.v,
          bottom: 7.v,
        ),
        color: theme.colorScheme.onPrimary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.circleBorder3,
        ),
        child: Container(
          height: 138.v,
          width: 253.h,
          decoration: AppDecoration.outlineBlack.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder3,
          ),
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Obx(
                    () => CustomImageView(
                  imagePath: landingpageheadphoneItemModelObj.image!.value,
                  height: 138.v,
                  width: 253.h,
                  radius: BorderRadius.circular(
                    4.h,
                  ),
                  alignment: Alignment.center,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgImage1465,
                height: 140.v,
                width: 120.h,
                alignment: Alignment.centerRight,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 105.h,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl_electronic".tr,
                              ),
                              TextSpan(
                                text: "lbl_accessories".tr,
                                style: CustomTextStyles
                                    .bodyLargePoppinsOnErrorContainer_1,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 11.v),
                      CustomElevatedButton(
                        height: 21.v,
                        width: 97.h,
                        text: "lbl_up_to_50_off".tr,
                        buttonStyle: CustomButtonStyles.fillOnErrorContainerTL3,
                        buttonTextStyle: CustomTextStyles.labelMediumBlack900,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
