import 'controller/search_result_controller.dart';
import 'package:flutter/material.dart';
import 'package:vibra_verve/core/app_export.dart';
import 'package:vibra_verve/widgets/app_bar/appbar_title_searchview_one.dart';
import 'package:vibra_verve/widgets/app_bar/appbar_trailing_image.dart';
import 'package:vibra_verve/widgets/app_bar/custom_app_bar.dart';
import 'package:vibra_verve/widgets/custom_drop_down.dart';
import 'package:vibra_verve/widgets/custom_elevated_button.dart';
import 'package:vibra_verve/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class SearchResultScreen extends GetWidget<SearchResultController> {
  const SearchResultScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Divider(),
              SizedBox(height: 15.v),
              _buildResultCounter(),
              Spacer(
                flex: 30,
              ),
              CustomIconButton(
                height: 72.adaptSize,
                width: 72.adaptSize,
                padding: EdgeInsets.all(28.h),
                decoration: IconButtonStyleHelper.outlineLightBlueA,
                child: CustomImageView(
                  imagePath: ImageConstant.imgCloseOnerrorcontainer,
                ),
              ),
              SizedBox(height: 15.v),
              Text(
                "msg_product_not_found".tr,
                style: CustomTextStyles.headlineSmallBlack900,
              ),
              SizedBox(height: 11.v),
              Text(
                "msg_thank_you_for_shopping".tr,
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 16.v),
              CustomElevatedButton(
                text: "lbl_back_to_home".tr,
                margin: EdgeInsets.symmetric(horizontal: 16.h),
              ),
              Spacer(
                flex: 69,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: AppbarTitleSearchviewOne(
        margin: EdgeInsets.only(left: 16.h),
        hintText: "lbl_search_product".tr,
        controller: controller.searchController,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgShortIcon,
          margin: EdgeInsets.only(
            left: 16.h,
            top: 27.v,
            right: 27.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFilter,
          margin: EdgeInsets.only(
            left: 16.h,
            top: 27.v,
            right: 43.h,
          ),
        ),
      ],
      styleType: Style.bgFill_1,
    );
  }

  /// Section Widget
  Widget _buildResultCounter() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Opacity(
            opacity: 0.5,
            child: Padding(
              padding: EdgeInsets.only(
                top: 1.v,
                bottom: 4.v,
              ),
              child: Text(
                "lbl_0_result".tr,
                style: CustomTextStyles.labelLargeBlack900_1,
              ),
            ),
          ),
          CustomDropDown(
            width: 103.h,
            icon: Container(
              margin: EdgeInsets.only(left: 8.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgSystemIcon24pxBottom,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            hintText: "lbl_man_shoes".tr,
            items:
                controller.searchResultModelObj.value.dropdownItemList!.value,
            contentPadding: EdgeInsets.symmetric(vertical: 2.v),
            onChanged: (value) {
              controller.onSelected(value);
            },
          ),
        ],
      ),
    );
  }
}
