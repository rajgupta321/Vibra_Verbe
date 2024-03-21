import '../controller/choose_credit_or_debit_card_one_controller.dart';
import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vibra_verve/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  var controller = Get.find<ChooseCreditOrDebitCardOneController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 21.h,
        vertical: 23.v,
      ),
      decoration: AppDecoration.fillPrimary1.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder3,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 22.v,
            width: 36.h,
            margin: EdgeInsets.only(left: 3.h),
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 22.adaptSize,
                    width: 22.adaptSize,
                    decoration: BoxDecoration(
                      color: appTheme.gray400,
                      borderRadius: BorderRadius.circular(
                        11.h,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 22.adaptSize,
                    width: 22.adaptSize,
                    decoration: BoxDecoration(
                      color: appTheme.gray400,
                      borderRadius: BorderRadius.circular(
                        11.h,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30.v),
          Text(
            "msg_6326_9124".tr,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 17.v),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 2.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Opacity(
                      opacity: 0.5,
                      child: Text(
                        "lbl_card_holder".tr,
                        style: CustomTextStyles.bodySmallOnErrorContainer,
                      ),
                    ),
                    SizedBox(height: 4.v),
                    Text(
                      "lbl_lailyfa_febrina".tr,
                      style: theme.textTheme.labelMedium,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 27.h,
                  bottom: 3.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Opacity(
                      opacity: 0.5,
                      child: Text(
                        "lbl_card_save".tr,
                        style: CustomTextStyles.bodySmallOnErrorContainer,
                      ),
                    ),
                    SizedBox(height: 3.v),
                    Text(
                      "lbl_19_2042".tr,
                      style: theme.textTheme.labelMedium,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
