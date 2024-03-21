import '../controller/home_controller.dart';
import '../models/productcomponent_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vibra_verve/core/app_export.dart';

// ignore: must_be_immutable
class ProductcomponentItemWidget extends StatelessWidget {
  ProductcomponentItemWidget(
    this.productcomponentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductcomponentItemModel productcomponentItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 2.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineBlack9001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      width: 156.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: productcomponentItemModelObj.productImage!.value,
              height: 145.adaptSize,
              width: 145.adaptSize,
            ),
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Obx(
              () => Text(
                productcomponentItemModelObj.productName!.value,
                style: CustomTextStyles.titleSmallDMSansGray90001Medium,
              ),
            ),
          ),
          SizedBox(height: 3.v),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Obx(
              () => Text(
                productcomponentItemModelObj.productPrice!.value,
                style: CustomTextStyles.labelLargeDMSansRed50001,
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 29.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgStar,
                        height: 11.adaptSize,
                        width: 11.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 1.v),
                      ),
                      Obx(
                        () => Text(
                          productcomponentItemModelObj.ratingText!.value,
                          style: CustomTextStyles.bodySmallDMSansGray90001,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: Obx(
                    () => Text(
                      productcomponentItemModelObj.reviewCount!.value,
                      style: CustomTextStyles.bodySmallDMSansGray90001,
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgRegularMenuDotsVertical,
                  height: 14.adaptSize,
                  width: 14.adaptSize,
                  margin: EdgeInsets.only(left: 28.h),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.v),
        ],
      ),
    );
  }
}


///For APIs
// import '../controller/home_controller.dart';
// import '../models/productcomponent_item_model.dart';
// import 'package:flutter/material.dart';
// import 'package:vibra_verve/core/app_export.dart';
//
// // ignore: must_be_immutable
// class ProductcomponentItemWidget extends StatelessWidget {
//   ProductcomponentItemWidget(
//       this.productcomponentItemModelObj, {
//         Key? key,
//       }) : super(
//     key: key,
//   );
//
//   final ProductcomponentItemModel productcomponentItemModelObj;
//
//   final HomeController controller = Get.find<HomeController>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(
//         horizontal: 8.0,
//         vertical: 12.0,
//       ),
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.black),
//         borderRadius: BorderRadius.circular(8.0),
//       ),
//       width: 156.0,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           CustomImageView(
//             imagePath: productcomponentItemModelObj.thumbnail?.value,
//             height: 145.0,
//             width: 145.0,
//           ),
//           SizedBox(height: 12.0),
//           Text(
//             productcomponentItemModelObj.title!.value,
//             style: TextStyle(
//               fontSize: 16.0,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           SizedBox(height: 4.0),
//           Text(
//             'Price: ${productcomponentItemModelObj.price?.value}',
//             style: TextStyle(
//               fontSize: 14.0,
//               color: Colors.red,
//             ),
//           ),
//           SizedBox(height: 4.0),
//           Row(
//             children: [
//               Icon(Icons.star, color: Colors.yellow),
//               SizedBox(width: 4.0),
//               Text(
//                 'Rating: ${productcomponentItemModelObj.rating?.value}',
//                 style: TextStyle(
//                   fontSize: 14.0,
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(height: 4.0),
//           Text(
//             'Stock: ${productcomponentItemModelObj.stock?.value}',
//             style: TextStyle(
//               fontSize: 14.0,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }