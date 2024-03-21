import '../home_page/widgets/landingpageheadphone_item_widget.dart';
import '../home_page/widgets/mobilescomponent_item_widget.dart';
import '../home_page/widgets/productcard_item_widget.dart';
import '../home_page/widgets/productcomponent_item_widget.dart';
import '../ten_screen/ten_screen.dart';
import 'controller/home_controller.dart';
import 'models/landingpageheadphone_item_model.dart';
import 'models/mobilescomponent_item_model.dart';
import 'models/productcard_item_model.dart';
import 'models/productcomponent_item_model.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:vibra_verve/core/app_export.dart';
import 'package:vibra_verve/widgets/app_bar/appbar_title.dart';
import 'package:vibra_verve/widgets/app_bar/appbar_trailing_image.dart';
import 'package:vibra_verve/widgets/app_bar/custom_app_bar.dart';
import 'package:vibra_verve/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class HomePage extends GetWidget<HomeController> {
  const HomePage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10003,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 2.v),
          child: Column(
            children: [
              SizedBox(height: 21.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 17.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      children: [
                        _buildLandingPageHeadphone(),
                        SizedBox(height: 22.v),
                        _buildCategories(),
                        SizedBox(height: 21.v),
                        _buildTopsDealsOnElectronics(),
                        SizedBox(height: 35.v),
                        _buildSpecialOffersOn(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 60.v,
      title: Align(
        alignment: Alignment.centerLeft ,
        child: Padding(
          padding: EdgeInsets.only( top: 15.v),
          child: AppbarTitle(
            text: "lbl_vibraverve".tr,
            margin: EdgeInsets.only(left: 21.h),
          ),
        ),
      ),
      actions: [
        AppbarTrailingImage(onTap: (){
          Get.toNamed('/notification_screen');
        },
          imagePath: ImageConstant.imgClarityNotificationSolid,
          margin: EdgeInsets.only(
            left: 17.h,
            top: 18.v,
            right: 12.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgMegaphone,
          margin: EdgeInsets.fromLTRB(25.h, 21.v, 29.h, 4.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildLandingPageHeadphone() {
    return SizedBox(
      height: 149.v,
      child: Obx(
            () =>
            ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context,
                  index,) {
                return SizedBox(
                  width: 2.h,
                );
              },
              itemCount: controller
                  .homeModelObj.value.landingpageheadphoneItemList.value
                  .length,
              itemBuilder: (context, index) {
                LandingpageheadphoneItemModel model = controller
                    .homeModelObj.value.landingpageheadphoneItemList
                    .value[index];
                return LandingpageheadphoneItemWidget(
                  model,
                );
              },
            ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCategories() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_categories".tr,
          style: CustomTextStyles.titleMedium_2,
        ),
        SizedBox(height: 11.v),
        Padding(
          padding: EdgeInsets.only(right: 16.h),
          child: Obx(
                () =>
                // controller.isLoading.value
                // ? CircularProgressIndicator():
                 GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 125.v,
                crossAxisCount: 3,
                mainAxisSpacing: 22.h,
                crossAxisSpacing: 22.h,
              ),
              physics: NeverScrollableScrollPhysics(),
              itemCount: controller
                  .homeModelObj.value.mobilescomponentItemList.value.length,
              itemBuilder: (context, index) {
                MobilescomponentItemModel model = controller.homeModelObj
                    .value.mobilescomponentItemList.value[index];
                return GestureDetector(
                  onTap: () {
                    Get.toNamed('/seven_screen');
                  },
                  child: MobilescomponentItemWidget(
                    model,
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTopsDealsOnElectronics() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 1.h,
            right: 17.h,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "msg_tops_deals_on_electronics".tr,
                style: CustomTextStyles.titleMedium_2,
              ),
              Container(
                height: 4.v,
                margin: EdgeInsets.only(
                  top: 10.v,
                  bottom: 9.v,
                ),
                child: AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 4,
                  effect: ScrollingDotsEffect(
                    spacing: 10,
                    activeDotColor: theme.colorScheme.primary,
                    dotColor: appTheme.blueGray10001,
                    dotHeight: 4.v,
                    dotWidth: 4.h,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 16.v),
        SizedBox(
          height: 148.v,
          child: Obx(
            () => ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 12.h,
                );
              },
              itemCount: controller
                  .homeModelObj.value.productcardItemList.value.length,
              itemBuilder: (context, index) {
                ProductcardItemModel model = controller
                    .homeModelObj.value.productcardItemList.value[index];
                return InkWell(
                  onTap: () {
                    Get.to(TenScreen());
                  },
                  child: ProductcardItemWidget(
                    model,
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSpecialOffersOn() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 1.h,
            right: 9.h,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "msg_special_offers_on".tr,
                style: CustomTextStyles.titleMedium_2,
              ),
              Container(
                height: 4.v,
                margin: EdgeInsets.only(
                  top: 8.v,
                  bottom: 11.v,
                ),
                child: AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 4,
                  effect: ScrollingDotsEffect(
                    spacing: 10,
                    activeDotColor: theme.colorScheme.primary,
                    dotColor: appTheme.blueGray10001,
                    dotHeight: 4.v,
                    dotWidth: 4.h,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 17.v),
        SizedBox(
          height: 242.v,
          child: Obx(
            () => ListView.separated(
              padding: EdgeInsets.only(left: 1.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 15.h,
                );
              },
              itemCount: controller
                  .homeModelObj.value.productcomponentItemList.value.length,
              itemBuilder: (context, index) {
                ProductcomponentItemModel model = controller
                    .homeModelObj.value.productcomponentItemList.value[index];
                return ProductcomponentItemWidget(
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
  Widget _buildBottomBar() {
    return CustomBottomBar();
  }
}
