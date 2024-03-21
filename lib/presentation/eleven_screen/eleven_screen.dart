import '../eleven_screen/widgets/favorite_item_widget.dart';
import '../eleven_screen/widgets/productcomponent3_item_widget.dart';
import '../eleven_screen/widgets/widget_item_widget.dart';
import 'controller/eleven_controller.dart';
import 'models/favorite_item_model.dart';
import 'models/productcomponent3_item_model.dart';
import 'models/widget_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:vibra_verve/core/app_export.dart';
import 'package:vibra_verve/widgets/app_bar/appbar_leading_image.dart';
import 'package:vibra_verve/widgets/app_bar/appbar_subtitle_six.dart';
import 'package:vibra_verve/widgets/app_bar/appbar_trailing_image.dart';
import 'package:vibra_verve/widgets/app_bar/custom_app_bar.dart';
import 'package:vibra_verve/widgets/custom_elevated_button.dart';
import 'package:vibra_verve/widgets/custom_icon_button.dart';
import 'package:vibra_verve/widgets/custom_outlined_button.dart';
import 'package:vibra_verve/widgets/custom_rating_bar.dart';

// ignore_for_file: must_be_immutable
class ElevenScreen extends GetWidget<ElevenController> {
  const ElevenScreen({Key? key})
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
                _buildMegaMall(),
                SizedBox(height: 13.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 25.h),
                    child: Text(
                      "msg_tma_2hd_wireless2".tr,
                      style: CustomTextStyles.headlineSmallDMSansGray90001,
                    ),
                  ),
                ),
                SizedBox(height: 11.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 25.h),
                    child: Text(
                      "lbl_rp_1_500_0002".tr,
                      style: CustomTextStyles.titleMediumDMSansRed50001,
                    ),
                  ),
                ),
                SizedBox(height: 8.v),
                _buildFortySix(),
                SizedBox(height: 28.v),
                Divider(
                  color: appTheme.gray200,
                  indent: 25.h,
                  endIndent: 25.h,
                ),
                SizedBox(height: 28.v),
                _buildShopLarsonElectronic(),
                SizedBox(height: 30.v),
                Divider(
                  color: appTheme.gray200,
                  indent: 25.h,
                  endIndent: 25.h,
                ),
                SizedBox(height: 31.v),
                _buildDescriptionProduct(),
                SizedBox(height: 14.v),
                _buildReviewEightySix(),
                SizedBox(height: 31.v),
                _buildReview(),
                _buildReview1(),
                _buildReview2(),
                SizedBox(height: 17.v),
                CustomOutlinedButton(
                  text: "lbl_see_all_review".tr,
                  margin: EdgeInsets.symmetric(horizontal: 25.h),
                ),
                SizedBox(height: 11.v),
                _buildBuyNow(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppBarGroup() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Obx(
              () => CarouselSlider.builder(
                options: CarouselOptions(
                  height: 316.v,
                  initialPage: 0,
                  autoPlay: true,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: false,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (
                    index,
                    reason,
                  ) {
                    controller.sliderIndex1.value = index;
                  },
                ),
                itemCount: controller
                    .elevenModelObj.value.favoriteItemList.value.length,
                itemBuilder: (context, index, realIndex) {
                  FavoriteItemModel model = controller
                      .elevenModelObj.value.favoriteItemList.value[index];
                  return FavoriteItemWidget(
                    model,
                  );
                },
              ),
            ),
            SizedBox(height: 11.v),
            Align(
              alignment: Alignment.centerRight,
              child: Obx(
                () => Container(
                  height: 7.v,
                  margin: EdgeInsets.only(right: 134.h),
                  child: AnimatedSmoothIndicator(
                    activeIndex: controller.sliderIndex1.value,
                    count: controller
                        .elevenModelObj.value.favoriteItemList.value.length,
                    axisDirection: Axis.horizontal,
                    effect: ScrollingDotsEffect(
                      spacing: 3,
                      activeDotColor: theme.colorScheme.primary,
                      dotColor:
                          theme.colorScheme.onErrorContainer.withOpacity(1),
                      dotHeight: 7.v,
                      dotWidth: 7.h,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMegaMall() {
    return SizedBox(
      height: 398.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Obx(
            () => CarouselSlider.builder(
              options: CarouselOptions(
                height: 321.adaptSize,
                initialPage: 0,
                autoPlay: true,
                viewportFraction: 1.0,
                enableInfiniteScroll: false,
                scrollDirection: Axis.horizontal,
                onPageChanged: (
                  index,
                  reason,
                ) {
                  controller.sliderIndex.value = index;
                },
              ),
              itemCount:
                  controller.elevenModelObj.value.widgetItemList.value.length,
              itemBuilder: (context, index, realIndex) {
                WidgetItemModel model =
                    controller.elevenModelObj.value.widgetItemList.value[index];
                return WidgetItemWidget(
                  model,
                );
              },
            ),
          ),
          CustomAppBar(
            height: 55.v,
            leadingWidth: 44.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgRegularAngleSmallLeft,
              margin: EdgeInsets.only(
                left: 20.h,
                top: 15.v,
                bottom: 15.v,
              ),
            ),
            centerTitle: true,
            title: AppbarSubtitleSix(
              text: "lbl_detail_product".tr,
            ),
            actions: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgRegularRedo,
                margin: EdgeInsets.only(
                  left: 22.h,
                  top: 18.v,
                  right: 17.h,
                ),
              ),
              Container(
                height: 27.v,
                width: 23.h,
                margin: EdgeInsets.only(
                  left: 20.h,
                  top: 11.v,
                  right: 39.h,
                ),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRegularShoppingCartGray90002,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(
                        top: 7.v,
                        right: 3.h,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 14.adaptSize,
                        margin: EdgeInsets.only(
                          left: 9.h,
                          bottom: 13.v,
                        ),
                        decoration:
                            AppDecoration.outlineOnErrorContainer.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8,
                        ),
                        child: Text(
                          "lbl_2".tr,
                          style: CustomTextStyles.poppinsOnErrorContainer,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
            styleType: Style.bgShadow,
          ),
          _buildAppBarGroup(),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFortySix() {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.h,
        right: 20.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 37.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgStar,
                  height: 14.adaptSize,
                  width: 14.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 2.v),
                ),
                Text(
                  "lbl_4_6".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Text(
              "lbl_86_reviews".tr,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          Spacer(),
          Container(
            width: 123.h,
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 1.v,
            ),
            decoration: AppDecoration.fillGray10002.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Text(
              "msg_available_at_1000".tr,
              style: CustomTextStyles.labelLargeDMSansTeal400,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildShopLarsonElectronic() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage745x45,
            height: 45.adaptSize,
            width: 45.adaptSize,
            radius: BorderRadius.circular(
              22.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_shop_larson_electronic".tr,
                  style: CustomTextStyles.titleSmallDMSansGray90001Medium,
                ),
                SizedBox(height: 4.v),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 1.v,
                        bottom: 2.v,
                      ),
                      child: Text(
                        "lbl_official_store".tr,
                        style: CustomTextStyles.bodySmallDMSansGray90001_1,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgCheckmark,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      margin: EdgeInsets.only(left: 5.h),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgRegularAngleSmallLeftBlueGray40002,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(
              top: 13.v,
              bottom: 12.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDescriptionProduct() {
    return SizedBox(
      height: 361.v,
      width: 325.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(right: 8.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "msg_description_product".tr,
                      style: CustomTextStyles.titleMediumDMSansGray90001,
                    ),
                  ),
                  SizedBox(height: 16.v),
                  SizedBox(
                    width: 316.h,
                    child: Text(
                      "msg_the_speaker_unit".tr,
                      maxLines: 7,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumPoppins.copyWith(
                        height: 1.57,
                      ),
                    ),
                  ),
                  SizedBox(height: 14.v),
                  SizedBox(
                    width: 316.h,
                    child: Text(
                      "msg_the_speaker_unit".tr,
                      maxLines: 7,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumPoppins.copyWith(
                        height: 1.57,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 14.v),
              child: SizedBox(
                width: 325.h,
                child: Divider(
                  color: appTheme.gray200,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildReviewEightySix() {
    return Padding(
      padding: EdgeInsets.only(
        left: 28.h,
        right: 25.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Text(
              "lbl_review_86".tr,
              style: CustomTextStyles.titleMediumDMSansGray90001,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgStar,
                height: 16.adaptSize,
                width: 16.adaptSize,
                margin: EdgeInsets.symmetric(vertical: 2.v),
              ),
              Padding(
                padding: EdgeInsets.only(left: 3.h),
                child: Text(
                  "lbl_4_6".tr,
                  style: CustomTextStyles.titleMediumDMSansGray90001Medium,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildReview() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgPlay,
                height: 40.adaptSize,
                width: 40.adaptSize,
                radius: BorderRadius.circular(
                  20.h,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 15.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildFrameNinetyTwo(
                        userName: "lbl_yelena_belova".tr,
                        timeAgo: "lbl_2_mins_ago".tr,
                      ),
                      SizedBox(height: 5.v),
                      CustomRatingBar(
                        initialRating: 4,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 11.v),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 249.h,
              margin: EdgeInsets.only(
                left: 55.h,
                right: 20.h,
              ),
              child: Text(
                "msg_lorem_ipsum_dolor".tr,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodySmallGray90001.copyWith(
                  height: 1.67,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildReview1() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgPlay,
                height: 40.adaptSize,
                width: 40.adaptSize,
                radius: BorderRadius.circular(
                  20.h,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 15.h,
                    top: 2.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildFrameNinetyTwo(
                        userName: "lbl_stephen_strange".tr,
                        timeAgo: "lbl_1_mins_ago".tr,
                      ),
                      SizedBox(height: 3.v),
                      CustomRatingBar(
                        initialRating: 3,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 11.v),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 249.h,
              margin: EdgeInsets.only(
                left: 55.h,
                right: 20.h,
              ),
              child: Text(
                "msg_lorem_ipsum_dolor".tr,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodySmallGray90001.copyWith(
                  height: 1.67,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildReview2() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPlay,
            height: 40.adaptSize,
            width: 40.adaptSize,
            radius: BorderRadius.circular(
              20.h,
            ),
            margin: EdgeInsets.only(bottom: 91.v),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 15.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildFrameNinetyTwo(
                    userName: "lbl_peter_parker".tr,
                    timeAgo: "lbl_2_mins_ago".tr,
                  ),
                  SizedBox(height: 5.v),
                  CustomRatingBar(
                    initialRating: 4,
                  ),
                  SizedBox(height: 12.v),
                  Container(
                    width: 249.h,
                    margin: EdgeInsets.only(right: 20.h),
                    child: Text(
                      "msg_lorem_ipsum_dolor".tr,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallGray90001.copyWith(
                        height: 1.67,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBuyNow() {
    return SizedBox(
      height: 416.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 21.v,
              ),
              decoration: AppDecoration.fillGray50.copyWith(
                borderRadius: BorderRadiusStyle.customBorderTL10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "msg_featured_product".tr,
                        style:
                            CustomTextStyles.titleMediumDMSansGray90001Medium_1,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 2.v),
                        child: Text(
                          "lbl_see_all".tr,
                          style: CustomTextStyles.labelLargeDMSansIndigo500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 305.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: CustomElevatedButton(
                          height: 43.v,
                          text: "lbl_buy_now".tr,
                          buttonStyle: CustomButtonStyles.outlineBlackTL101,
                          buttonTextStyle:
                              CustomTextStyles.titleSmallOnErrorContainer15,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 19.h),
                        child: CustomIconButton(
                          height: 43.v,
                          width: 45.h,
                          padding: EdgeInsets.all(10.h),
                          decoration: IconButtonStyleHelper.outlineBlack,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgGroup43,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 3.v),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: SizedBox(
              height: 416.v,
              child: Obx(
                () => ListView.separated(
                  padding: EdgeInsets.only(
                    left: 25.h,
                    top: 69.v,
                    bottom: 105.v,
                  ),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      width: 15.h,
                    );
                  },
                  itemCount: controller.elevenModelObj.value
                      .productcomponent3ItemList.value.length,
                  itemBuilder: (context, index) {
                    Productcomponent3ItemModel model = controller.elevenModelObj
                        .value.productcomponent3ItemList.value[index];
                    return Productcomponent3ItemWidget(
                      model,
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFrameNinetyTwo({
    required String userName,
    required String timeAgo,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          userName,
          style: CustomTextStyles.titleSmallDMSansGray90001Medium.copyWith(
            color: appTheme.gray90001,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child: Text(
            timeAgo,
            style: CustomTextStyles.bodySmallDMSansBluegray40002.copyWith(
              color: appTheme.blueGray40002,
            ),
          ),
        ),
      ],
    );
  }
}
