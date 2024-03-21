import 'controller/search_controller.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:vibra_verve/core/app_export.dart';
import 'package:vibra_verve/widgets/app_bar/appbar_title_searchview.dart';
import 'package:vibra_verve/widgets/app_bar/appbar_trailing_image.dart';
import 'package:vibra_verve/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class SearchScreen extends GetWidget<SearchController> {
  const SearchScreen({Key? key})
      : super(
          key: key,
        );


  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Divider(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: AppbarTitleSearchview(
        margin: EdgeInsets.only(left: 16.h),
        hintText: "msg_iphone_13_max_pro".tr,
        controller: controller.searchController,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgSystemIcon24pxMic,
          margin: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 27.v,
          ),
        ),
      ],
      styleType: Style.bgFill_1,
    );
  }
}
