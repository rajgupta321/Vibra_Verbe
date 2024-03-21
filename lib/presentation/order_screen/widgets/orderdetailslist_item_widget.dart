import '../controller/order_controller.dart';
import '../models/orderdetailslist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vibra_verve/core/app_export.dart';

// ignore: must_be_immutable
class OrderdetailslistItemWidget extends StatelessWidget {
  OrderdetailslistItemWidget(
    this.orderdetailslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  OrderdetailslistItemModel orderdetailslistItemModelObj;

  var controller = Get.find<OrderController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.outlineBlue.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder3,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Obx(
              () => Text(
                orderdetailslistItemModelObj.lqnsujk!.value,
                style: CustomTextStyles.titleSmallBold,
              ),
            ),
          ),
          SizedBox(height: 14.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Opacity(
              opacity: 0.5,
              child: Obx(
                () => Text(
                  orderdetailslistItemModelObj.month!.value,
                  style: CustomTextStyles.bodySmallBlack900_2,
                ),
              ),
            ),
          ),
          SizedBox(height: 26.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Opacity(
                opacity: 0.5,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Obx(
                    () => Text(
                      orderdetailslistItemModelObj.orderStatus!.value,
                      style: CustomTextStyles.bodySmallBlack900_2,
                    ),
                  ),
                ),
              ),
              Obx(
                () => Text(
                  orderdetailslistItemModelObj.shipping!.value,
                  style: CustomTextStyles.bodySmallBlack900_1,
                ),
              ),
            ],
          ),
          SizedBox(height: 14.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Opacity(
                opacity: 0.5,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Obx(
                    () => Text(
                      orderdetailslistItemModelObj.items!.value,
                      style: CustomTextStyles.bodySmallBlack900_2,
                    ),
                  ),
                ),
              ),
              Obx(
                () => Text(
                  orderdetailslistItemModelObj.itemsPurchased!.value,
                  style: CustomTextStyles.bodySmallBlack900_1,
                ),
              ),
            ],
          ),
          SizedBox(height: 14.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Opacity(
                opacity: 0.5,
                child: Obx(
                  () => Text(
                    orderdetailslistItemModelObj.price!.value,
                    style: CustomTextStyles.bodySmallBlack900_2,
                  ),
                ),
              ),
              Obx(
                () => Text(
                  orderdetailslistItemModelObj.price1!.value,
                  style: CustomTextStyles.labelLargePrimary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
