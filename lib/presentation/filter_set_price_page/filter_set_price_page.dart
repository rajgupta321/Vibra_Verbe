import '../filter_set_price_page/widgets/alllistings2_item_widget.dart';
import '../filter_set_price_page/widgets/freereturns_item_widget.dart';
import '../filter_set_price_page/widgets/usonly2_item_widget.dart';
import 'controller/filter_set_price_controller.dart';
import 'models/alllistings2_item_model.dart';
import 'models/filter_set_price_model.dart';
import 'models/freereturns_item_model.dart';
import 'models/usonly2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vibra_verve/core/app_export.dart';
import 'package:vibra_verve/widgets/custom_elevated_button.dart';
import 'package:vibra_verve/widgets/custom_outlined_button.dart';

class FilterSetPricePage extends StatelessWidget {
  FilterSetPricePage({Key? key})
      : super(
          key: key,
        );

  FilterSetPriceController controller =
      Get.put(FilterSetPriceController(FilterSetPriceModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 24.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Column(
                    children: [
                      _buildBuyingFormat(),
                      SizedBox(height: 8.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            CustomOutlinedButton(
                              width: 98.h,
                              text: "lbl_buy_it_now".tr,
                              buttonStyle: CustomButtonStyles.outlineBlueTL5,
                              buttonTextStyle: theme.textTheme.bodySmall!,
                            ),
                            CustomOutlinedButton(
                              width: 123.h,
                              text: "lbl_classified_ads".tr,
                              margin: EdgeInsets.only(left: 8.h),
                              buttonStyle: CustomButtonStyles.outlineBlueTL5,
                              buttonTextStyle: theme.textTheme.bodySmall!,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 23.v),
                      SizedBox(
                        height: 538.v,
                        width: 343.h,
                        child: Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            _buildItemLocation(),
                            _buildShowOnly(),
                            CustomElevatedButton(
                              width: 343.h,
                              text: "lbl_apply".tr,
                              margin: EdgeInsets.only(top: 128.v),
                              alignment: Alignment.topCenter,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBuyingFormat() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_buying_format".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 11.v),
        Obx(
          () => Wrap(
            runSpacing: 8.v,
            spacing: 8.h,
            children: List<Widget>.generate(
              controller.filterSetPriceModelObj.value.alllistings2ItemList.value
                  .length,
              (index) {
                Alllistings2ItemModel model = controller.filterSetPriceModelObj
                    .value.alllistings2ItemList.value[index];

                return Alllistings2ItemWidget(
                  model,
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildItemLocation() {
    return Align(
      alignment: Alignment.topLeft,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_item_location".tr,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 12.v),
          Obx(
            () => Wrap(
              runSpacing: 8.v,
              spacing: 8.h,
              children: List<Widget>.generate(
                controller
                    .filterSetPriceModelObj.value.usonly2ItemList.value.length,
                (index) {
                  Usonly2ItemModel model = controller.filterSetPriceModelObj
                      .value.usonly2ItemList.value[index];

                  return Usonly2ItemWidget(
                    model,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildShowOnly() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_show_only".tr,
            style: CustomTextStyles.titleSmallBold,
          ),
          SizedBox(height: 10.v),
          Obx(
            () => Wrap(
              runSpacing: 8.v,
              spacing: 8.h,
              children: List<Widget>.generate(
                controller.filterSetPriceModelObj.value.freereturnsItemList
                    .value.length,
                (index) {
                  FreereturnsItemModel model = controller.filterSetPriceModelObj
                      .value.freereturnsItemList.value[index];

                  return FreereturnsItemWidget(
                    model,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
