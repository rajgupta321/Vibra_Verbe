import '../controller/ship_to_controller.dart';
import '../models/userprofilelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vibra_verve/core/app_export.dart';
import 'package:vibra_verve/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class UserprofilelistItemWidget extends StatelessWidget {
  UserprofilelistItemWidget(
    this.userprofilelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofilelistItemModel userprofilelistItemModelObj;

  var controller = Get.find<ShipToController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 21.v,
      ),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder3,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Text(
              userprofilelistItemModelObj.username!.value,
              style: CustomTextStyles.titleSmallIndigo900Bold,
            ),
          ),
          SizedBox(height: 19.v),
          Container(
            width: 264.h,
            margin: EdgeInsets.only(right: 30.h),
            child: Obx(
              () => Text(
                userprofilelistItemModelObj.address!.value,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodySmall!.copyWith(
                  height: 1.80,
                ),
              ),
            ),
          ),
          SizedBox(height: 14.v),
          Obx(
            () => Text(
              userprofilelistItemModelObj.phoneNumber!.value,
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 18.v),
          Row(
            children: [
              CustomOutlinedButton(onPressed: (){
                Get.toNamed('/add_address_screen');
              },
                height: 57.v,
                width: 77.h,
                text: "lbl_edit".tr,
                buttonStyle: CustomButtonStyles.outlineBlue,
                buttonTextStyle: CustomTextStyles.titleSmallOnErrorContainer,
              ),
              Opacity(
                opacity: 0.5,
                child: CustomImageView(
                  imagePath: ImageConstant.imgFrame,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    left: 24.h,
                    top: 17.v,
                    bottom: 16.v,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
