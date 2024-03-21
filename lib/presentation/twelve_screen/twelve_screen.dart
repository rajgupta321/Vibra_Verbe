import '../twelve_screen/widgets/productlistgrid_item_widget.dart';
import 'controller/twelve_controller.dart';
import 'models/productlistgrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vibra_verve/core/app_export.dart';
import 'package:vibra_verve/core/utils/validation_functions.dart';
import 'package:vibra_verve/widgets/app_bar/appbar_leading_image.dart';
import 'package:vibra_verve/widgets/app_bar/appbar_subtitle_six.dart';
import 'package:vibra_verve/widgets/app_bar/appbar_trailing_image.dart';
import 'package:vibra_verve/widgets/app_bar/custom_app_bar.dart';
import 'package:vibra_verve/widgets/custom_outlined_button.dart';
import 'package:vibra_verve/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class TwelveScreen extends GetWidget<TwelveController> {
  TwelveScreen({Key? key})
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
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 33.v),
            child: Column(
              children: [
                _buildPhoneColumn(),
                SizedBox(height: 33.v),
                Expanded(
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 25.h,
                        vertical: 19.v,
                      ),
                      decoration: AppDecoration.fillGray50.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL10,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: 6.v),
                          _buildProductListGrid(),
                          SizedBox(height: 21.v),
                          CustomOutlinedButton(
                            text: "msg_filter_sorting".tr,
                            buttonStyle: CustomButtonStyles.outlinePrimary,
                            buttonTextStyle: CustomTextStyles
                                .titleSmallDMSansOnErrorContainer,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
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
  Widget _buildProductListGrid() {
    return Expanded(
      child: Obx(
        () => GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 506.v,
            crossAxisCount: 1,
            mainAxisSpacing: 1.h,
            crossAxisSpacing: 1.h,
          ),
          physics: BouncingScrollPhysics(),
          itemCount: controller
              .twelveModelObj.value.productlistgridItemList.value.length,
          itemBuilder: (context, index) {
            ProductlistgridItemModel model = controller
                .twelveModelObj.value.productlistgridItemList.value[index];
            return ProductlistgridItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
