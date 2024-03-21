import '../controller/cart_one_controller.dart';
import '../models/productlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vibra_verve/core/app_export.dart';
import 'package:vibra_verve/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ProductlistItemWidget extends StatelessWidget {
  ProductlistItemWidget(
    this.productlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductlistItemModel productlistItemModelObj;

  var controller = Get.find<CartOneController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 13.v),
      decoration: AppDecoration.outlineBlue.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder3,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: productlistItemModelObj.productImage!.value,
              height: 56.v,
              width: 75.h,
              margin: EdgeInsets.only(
                top: 5.v,
                bottom: 13.v,
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(
                width: 227.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 131.h,
                      child: Obx(
                        () => Text(
                          productlistItemModelObj.productName!.value,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.labelLargeGray90001.copyWith(
                            height: 1.50,
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Obx(
                      () => CustomImageView(
                        imagePath: productlistItemModelObj.productImage1!.value,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(bottom: 13.v),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgSystemIcon24pxTrash,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(
                        left: 8.h,
                        bottom: 13.v,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.v),
              SizedBox(
                width: 227.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 7.v),
                      child: Obx(
                        () => Text(
                          productlistItemModelObj.productPrice!.value,
                          style: CustomTextStyles.labelLargeRed50001,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomIconButton(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black12),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(5),
                                    topLeft: Radius.circular(5))),
                          height: 24.v,
                          width: 32.h,
                          child: Icon(Icons.remove,size: 18,)
                          // CustomImageView(
                          //   fit: BoxFit.contain,
                          //   imagePath: ImageConstant.imgSub,
                          // ),
                        ),
                        Container(
                          width: 40.h,
                          padding: EdgeInsets.symmetric(
                            horizontal: 18.h,
                            vertical: 2.v,
                          ),
                          decoration: AppDecoration.outlineBlue50,
                          child: Obx(
                            () => Text(
                              productlistItemModelObj.thumbsUpCount!.value,
                              style: CustomTextStyles.bodySmallIndigo900,
                            ),
                          ),
                        ),
                        CustomIconButton(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black12),
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(5),
                                    topRight: Radius.circular(5))),
                          height: 24.v,
                          width: 32.h,
                          child: Icon(Icons.add,size: 18,)
                          // CustomImageView(
                          //   fit: BoxFit.contain,
                          //   imagePath: ImageConstant.imgAdd,
                          // ),
                        ),
                      ],
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
