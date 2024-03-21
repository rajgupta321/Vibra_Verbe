import 'controller/success_controller.dart';
import 'package:flutter/material.dart';
import 'package:vibra_verve/core/app_export.dart';
import 'package:vibra_verve/widgets/custom_elevated_button.dart';
import 'package:vibra_verve/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class SuccessScreen extends GetWidget<SuccessController> {
  const SuccessScreen({Key? key})
      : super(
    key: key,
  );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(fit: BoxFit.contain,
                imagePath: ImageConstant.imgCheckmarkOnerrorcontainer,
              ),
              SizedBox(height: 15.v),
              Text(
                "lbl_success".tr,
                style: CustomTextStyles.headlineSmallIndigo900,
              ),
              SizedBox(height: 11.v),
              Opacity(
                opacity: 0.5,
                child: Text(
                  "msg_thank_you_for_shopping".tr,
                  style: CustomTextStyles.bodySmallPoppinsIndigo90012_1,
                ),
              ),
              SizedBox(height: 16.v),
              CustomElevatedButton(onPressed: (){
                Get.toNamed('/login1_screen');
              },
                text: "lbl_back_to_order".tr,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
