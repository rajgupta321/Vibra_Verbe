import '../filter_page/widgets/alllistings_item_widget.dart';
import '../filter_page/widgets/freereturnssection_item_widget.dart';
import '../filter_page/widgets/usonly_item_widget.dart';
import 'controller/filter_controller.dart';
import 'models/alllistings_item_model.dart';
import 'models/filter_model.dart';
import 'models/freereturnssection_item_model.dart';
import 'models/usonly_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vibra_verve/core/app_export.dart';
import 'package:vibra_verve/widgets/custom_elevated_button.dart';

class FilterPage extends StatelessWidget {
  FilterPage({Key? key})
      : super(
          key: key,
        );

  FilterController controller = Get.put(FilterController(FilterModel().obs));

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
                      _buildBuyingFormatSection(),
                      SizedBox(height: 23.v),
                      _buildItemLocationSection(),
                      SizedBox(height: 26.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "lbl_show_only".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      SizedBox(height: 10.v),
                      _buildFreeReturnsSection(),
                      SizedBox(height: 22.v),
                      CustomElevatedButton(
                        text: "lbl_apply".tr,
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
  Widget _buildBuyingFormatSection() {
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
              controller.filterModelObj.value.alllistingsItemList.value.length,
              (index) {
                AlllistingsItemModel model = controller
                    .filterModelObj.value.alllistingsItemList.value[index];

                return AlllistingsItemWidget(
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
  Widget _buildItemLocationSection() {
    return Column(
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
              controller.filterModelObj.value.usonlyItemList.value.length,
              (index) {
                UsonlyItemModel model =
                    controller.filterModelObj.value.usonlyItemList.value[index];

                return UsonlyItemWidget(
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
  Widget _buildFreeReturnsSection() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Obx(
        () => Wrap(
          runSpacing: 8.v,
          spacing: 8.h,
          children: List<Widget>.generate(
            controller
                .filterModelObj.value.freereturnssectionItemList.value.length,
            (index) {
              FreereturnssectionItemModel model = controller
                  .filterModelObj.value.freereturnssectionItemList.value[index];

              return FreereturnssectionItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
