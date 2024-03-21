import 'controller/filter_set_price_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:vibra_verve/core/app_export.dart';
import 'package:vibra_verve/presentation/filter_page/filter_page.dart';

// ignore_for_file: must_be_immutable
class FilterSetPriceTabContainerScreen
    extends GetWidget<FilterSetPriceTabContainerController> {
  const FilterSetPriceTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildHeader(),
                SizedBox(height: 15.v),
                _buildPriceRange(),
                SizedBox(height: 3.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: _buildMin(
                    minText: "lbl_min".tr,
                    maxText: "lbl_max".tr,
                  ),
                ),
                SizedBox(height: 23.v),
                _buildCondition(),
                SizedBox(
                  height: 424.v,
                  child: TabBarView(
                    controller: controller.tabviewController,
                    children: [
                      FilterPage(),
                      FilterPage(),
                      FilterPage(),
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
  Widget _buildHeader() {
    return Column(
      children: [
        Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 28.v,
          ),
          decoration: AppDecoration.fillOnErrorContainer,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgSystemIcon24pxX,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(top: 42.v),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 12.h,
                  top: 41.v,
                ),
                child: Text(
                  "lbl_filter_search".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ),
            ],
          ),
        ),
        Divider(),
      ],
    );
  }

  /// Section Widget
  Widget _buildPriceRange() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "lbl_price_range".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
          SizedBox(height: 11.v),
          _buildMin(
            minText: "lbl_1_245".tr,
            maxText: "lbl_9_344".tr,
          ),
          SizedBox(height: 12.v),
          SliderTheme(
            data: SliderThemeData(
              trackShape: RoundedRectSliderTrackShape(),
              activeTrackColor: theme.colorScheme.primary,
              inactiveTrackColor: appTheme.blue50,
              thumbColor: theme.colorScheme.primary,
              thumbShape: RoundSliderThumbShape(),
            ),
            child: RangeSlider(
              values: RangeValues(
                18.66,
                83.09,
              ),
              min: 0.0,
              max: 100.0,
              onChanged: (value) {},
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCondition() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_condition".tr,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 12.v),
          Container(
            height: 50.v,
            width: 261.h,
            child: TabBar(
              controller: controller.tabviewController,
              labelPadding: EdgeInsets.zero,
              labelColor: appTheme.blueGray300,
              labelStyle: TextStyle(
                fontSize: 12.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
              unselectedLabelColor: theme.colorScheme.primary,
              unselectedLabelStyle: TextStyle(
                fontSize: 12.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
              ),
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  5.h,
                ),
                border: Border.all(
                  color: appTheme.blue50,
                  width: 1.h,
                ),
              ),
              tabs: [
                Tab(
                  child: Text(
                    "lbl_new".tr,
                  ),
                ),
                Tab(
                  child: Text(
                    "lbl_used".tr,
                  ),
                ),
                Tab(
                  child: Text(
                    "lbl_not_specified".tr,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildMin({
    required String minText,
    required String maxText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          minText,
          style: theme.textTheme.labelLarge!.copyWith(
            color: appTheme.blueGray300,
          ),
        ),
        Text(
          maxText,
          style: theme.textTheme.labelLarge!.copyWith(
            color: appTheme.blueGray300,
          ),
        ),
      ],
    );
  }
}
