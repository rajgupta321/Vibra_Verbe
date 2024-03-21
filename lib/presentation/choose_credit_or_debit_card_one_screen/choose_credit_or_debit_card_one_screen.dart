import '../choose_credit_or_debit_card_one_screen/widgets/userprofile_item_widget.dart';
import 'controller/choose_credit_or_debit_card_one_controller.dart';
import 'models/userprofile_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:vibra_verve/core/app_export.dart';
import 'package:vibra_verve/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:vibra_verve/widgets/app_bar/appbar_title_image.dart';
import 'package:vibra_verve/widgets/app_bar/custom_app_bar.dart';
import 'package:vibra_verve/widgets/custom_elevated_button.dart';

class ChooseCreditOrDebitCardOneScreen
    extends GetWidget<ChooseCreditOrDebitCardOneController> {
  const ChooseCreditOrDebitCardOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v),
                child: Column(children: [
                  Obx(() => CarouselSlider.builder(
                      options: CarouselOptions(
                          height: 190.v,
                          initialPage: 0,
                          autoPlay: true,
                          viewportFraction: 1.0,
                          enableInfiniteScroll: false,
                          scrollDirection: Axis.horizontal,
                          onPageChanged: (index, reason) {
                            controller.sliderIndex.value = index;
                          }),
                      itemCount: controller.chooseCreditOrDebitCardOneModelObj
                          .value.userprofileItemList.value.length,
                      itemBuilder: (context, index, realIndex) {
                        UserprofileItemModel model = controller
                            .chooseCreditOrDebitCardOneModelObj
                            .value
                            .userprofileItemList
                            .value[index];
                        return UserprofileItemWidget(model);
                      })),
                  SizedBox(height: 16.v),
                  Obx(() => SizedBox(
                      height: 8.v,
                      child: AnimatedSmoothIndicator(
                          activeIndex: controller.sliderIndex.value,
                          count: controller.chooseCreditOrDebitCardOneModelObj
                              .value.userprofileItemList.value.length,
                          axisDirection: Axis.horizontal,
                          effect: ScrollingDotsEffect(
                              spacing: 8,
                              activeDotColor: theme.colorScheme.primary,
                              dotColor: appTheme.blue50,
                              dotHeight: 8.v,
                              dotWidth: 8.h)))),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildPayButton()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 56.v,
        centerTitle: true,
        title: Column(children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Row(children: [
                AppbarTitleImage(
                    imagePath: ImageConstant.imgArrowLeftBlueGray300,
                    onTap: () {
                      onTapArrowLeft();
                    }),
                AppbarSubtitleFour(
                    text: "lbl_choose_card".tr,
                    margin: EdgeInsets.only(left: 12.h)),
                AppbarTitleImage(
                    imagePath: ImageConstant.imgSystemIcon24pxPlus,
                    margin: EdgeInsets.only(left: 171.h))
              ])),
          SizedBox(height: 27.v),
          SizedBox(width: double.maxFinite, child: Divider())
        ]),
        styleType: Style.bgFill_2);
  }

  /// Section Widget
  Widget _buildPayButton() {
    return CustomElevatedButton(onPressed: (){
      Get.toNamed('/success_screen');
    },
        text: "lbl_pay_766_86".tr,
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}