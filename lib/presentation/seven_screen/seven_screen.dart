import '../seven_screen/widgets/productcomponentgrid_item_widget.dart';
import '../ten_screen/ten_screen.dart';
import 'controller/seven_controller.dart';
import 'models/productcomponentgrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vibra_verve/core/app_export.dart';
import 'package:vibra_verve/core/utils/validation_functions.dart';
import 'package:vibra_verve/widgets/app_bar/appbar_leading_image.dart';
import 'package:vibra_verve/widgets/app_bar/appbar_subtitle_six.dart';
import 'package:vibra_verve/widgets/app_bar/appbar_trailing_image.dart';
import 'package:vibra_verve/widgets/app_bar/custom_app_bar.dart';
import 'package:vibra_verve/widgets/custom_bottom_bar.dart';
import 'package:vibra_verve/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SevenScreen extends GetWidget<SevenController> {
  SevenScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.gray10003,
        appBar: _buildAppBar(),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 33.v),
                  _buildPhoneColumn(),
                  SizedBox(
                    height: 840.v,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        _buildProductComponentGrid(),
                        _buildButtonFullColumn(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 55.v,
      leadingWidth: 44.h,
      leading: AppbarLeadingImage(onTap: (){
        Get.back();
      },
        imagePath: ImageConstant.imgRegularAngleSmallLeft,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 15.v,
          bottom: 15.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleSix(
        text: "lbl_category".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgRegularShoppingCart,
          margin: EdgeInsets.fromLTRB(25.h, 18.v, 25.h, 17.v),
        ),
      ],
      styleType: Style.bgShadow,
    );
  }

  /// Section Widget
  Widget _buildPhoneColumn() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: Text(
              "lbl_headphones".tr,
              style: CustomTextStyles.titleLargeDMSansGray90001,
            ),
          ),
          CustomTextFormField(
            controller: controller.phoneController,
            hintText: "msg_search_product_name".tr,
            hintStyle: CustomTextStyles.bodyMediumNunitoBlack900,
            textInputAction: TextInputAction.done,
            suffix: Container(
              margin: EdgeInsets.fromLTRB(30.h, 12.v, 12.h, 12.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgSearch,
                height: 15.adaptSize,
                width: 15.adaptSize,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 39.v,
            ),
            validator: (value) {
              if (!isText(value)) {
                return "err_msg_please_enter_valid_text".tr;
              }
              return null;
            },
            contentPadding: EdgeInsets.only(
              left: 16.h,
              top: 9.v,
              bottom: 9.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.outlineBlack,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProductComponentGrid() {
    return Align(
      alignment: Alignment.center,
      child: Container(
        decoration: AppDecoration.fillGray50.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL10,
        ),
        margin: EdgeInsets.only(bottom: 9.v),
        child: Obx(
          () => GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 243.v,
              crossAxisCount: 2,
              mainAxisSpacing: 13.h,
              crossAxisSpacing: 13.h,
            ),
            physics: BouncingScrollPhysics(),
            itemCount: controller
                .sevenModelObj.value.productcomponentgridItemList.value.length,
            itemBuilder: (context, index) {
              ProductcomponentgridItemModel model = controller.sevenModelObj
                  .value.productcomponentgridItemList.value[index];
              return InkWell(
                onTap: () {
                  Get.to(TenScreen());
                },
                child: ProductcomponentgridItemWidget(
                  model,
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildButtonFullColumn() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 25.h),
        padding: EdgeInsets.symmetric(
          horizontal: 111.h,
          vertical: 12.v,
        ),
        decoration: AppDecoration.outlinePrimary1.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 3.v),
            Text(
              "msg_filter_sorting".tr,
              style: CustomTextStyles.titleSmallDMSansOnErrorContainer,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar();
  }
}
