import '../controller/credit_card_and_debit_controller.dart';
import '../models/creditcardlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vibra_verve/core/app_export.dart';

// ignore: must_be_immutable
class CreditcardlistItemWidget extends StatelessWidget {
  CreditcardlistItemWidget(
    this.creditcardlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CreditcardlistItemModel creditcardlistItemModelObj;

  var controller = Get.find<CreditCardAndDebitController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 21.h,
        vertical: 23.v,
      ),
      decoration: AppDecoration.fillDeepOrange.copyWith(
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
          Obx(
            () => Text(
              creditcardlistItemModelObj.text1!.value,
              style: theme.textTheme.headlineSmall,
            ),
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
                      child: Obx(
                        () => Text(
                          creditcardlistItemModelObj.text2!.value,
                          style: CustomTextStyles.bodySmallOnErrorContainer,
                        ),
                      ),
                    ),
                    SizedBox(height: 4.v),
                    Obx(
                      () => Text(
                        creditcardlistItemModelObj.text3!.value,
                        style: theme.textTheme.labelMedium,
                      ),
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
                      child: Obx(
                        () => Text(
                          creditcardlistItemModelObj.text4!.value,
                          style: CustomTextStyles.bodySmallOnErrorContainer,
                        ),
                      ),
                    ),
                    SizedBox(height: 3.v),
                    Obx(
                      () => Text(
                        creditcardlistItemModelObj.text5!.value,
                        style: theme.textTheme.labelMedium,
                      ),
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
