import '../../widgets/custom_bottom_bar.dart';
import '../cart_one_page/widgets/productlist_item_widget.dart';
import 'controller/cart_one_controller.dart';
import 'models/cart_one_model.dart';
import 'models/productlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vibra_verve/core/app_export.dart';
import 'package:vibra_verve/widgets/custom_elevated_button.dart';
import 'package:vibra_verve/widgets/custom_text_form_field.dart';

class CartOnePage extends StatelessWidget {
  CartOnePage({Key? key})
      : super(
    key: key,
  );

  CartOneController controller = Get.put(CartOneController(CartOneModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.maxFinite,
            // decoration: AppDecoration.fillOnErrorContainer,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildHeader(),
                    SizedBox(height: 15.v),
                    _buildProductList(),
                    SizedBox(height: 32.v),
                    _buildCouponForm(),
                    SizedBox(height: 16.v),
                    CustomElevatedButton(onPressed: (){
                      Get.toNamed('/ship_to_screen');
                    },
                      text: "lbl_check_out".tr,
                      margin: EdgeInsets.symmetric(horizontal: 16.h),
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
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
            vertical: 26.v,
          ),
          decoration: AppDecoration.fillOnErrorContainer,
          child: Text(
            "lbl_your_cart".tr,
            style: CustomTextStyles.titleMediumIndigo900_2,
          ),
        ),
        Divider(),
      ],
    );
  }

  /// Section Widget
  Widget _buildProductList() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Obx(
            () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
              context,
              index,
              ) {
            return SizedBox(
              height: 16.v,
            );
          },
          itemCount:
          controller.cartOneModelObj.value.productlistItemList.value.length,
          itemBuilder: (context, index) {
            ProductlistItemModel model = controller
                .cartOneModelObj.value.productlistItemList.value[index];
            return ProductlistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCouponForm() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 1.h),
            decoration: AppDecoration.outlineBlue.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder3,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 20.v,
                    bottom: 17.v,
                  ),
                  child: CustomTextFormField(
                    width: 227.h,
                    controller: controller.enterCouponCodeController,
                    hintText: "msg_enter_coupon_code".tr,
                    hintStyle: theme.textTheme.bodySmall!,
                    textInputAction: TextInputAction.done,
                  ),
                ),
                CustomElevatedButton(
                  width: 87.h,
                  text: "lbl_apply".tr,
                  margin: EdgeInsets.only(left: 12.h),
                  buttonStyle: CustomButtonStyles.fillPrimaryLR5,
                  buttonTextStyle: CustomTextStyles.labelLargeOnErrorContainer,
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
          Container(
            margin: EdgeInsets.only(right: 1.h),
            padding: EdgeInsets.all(15.h),
            decoration: AppDecoration.outlineBlue.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder3,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildShipping(
                  shippingLabel: "lbl_items_3".tr,
                  priceLabel: "lbl_598_86".tr,
                ),
                SizedBox(height: 16.v),
                _buildShipping(
                  shippingLabel: "lbl_shipping".tr,
                  priceLabel: "lbl_40_00".tr,
                ),
                SizedBox(height: 14.v),
                _buildShipping(
                  shippingLabel: "lbl_import_charges".tr,
                  priceLabel: "lbl_128_00".tr,
                ),
                SizedBox(height: 12.v),
                Divider(),
                SizedBox(height: 10.v),
                _buildShipping1(
                  shippingLabel: "lbl_total_price".tr,
                  priceLabel: "lbl_766_86".tr,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildShipping({
    required String shippingLabel,
    required String priceLabel,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(
            shippingLabel,
            style: theme.textTheme.bodySmall!.copyWith(
              color: appTheme.blueGray300,
            ),
          ),
        ),
        Text(
          priceLabel,
          style: CustomTextStyles.bodySmallIndigo900_1.copyWith(
            color: appTheme.indigo900,
          ),
        ),
      ],
    );
  }

  Widget _buildShipping1({
    required String shippingLabel,
    required String priceLabel,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(
            shippingLabel,
            style: theme.textTheme.bodySmall!.copyWith(
              color: Colors.black87,fontWeight:FontWeight.bold
            ),
          ),
        ),
        Text(
          priceLabel,
          style:TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,)
        ),
      ],
    );
  }

  Widget _buildBottomBar() {
    return CustomBottomBar();
  }
}


