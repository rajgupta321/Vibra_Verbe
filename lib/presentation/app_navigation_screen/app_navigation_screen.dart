import 'controller/app_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:vibra_verve/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Splash Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Login".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign Up One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign Up Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign Up".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign Up Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Search".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.searchScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Search Result".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.searchResultScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Short By".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.shortByScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Filter - Set Price - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.filterSetPriceTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Login".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homepage),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Homepage - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.homepageContainer1Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Nine".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.nineScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Ten".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.tenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Eleven".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.elevenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Homepage One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homepageOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Twelve".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.twelveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Thirteen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.thirteenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Seven".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.sevenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Cart - Insert Cupon".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.cartInsertCuponScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Cart - Cupon Wrong".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.cartCuponWrongScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Ship To".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.shipToScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Payment Method".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.paymentMethodScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Choose Credit Or Debit Card One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.chooseCreditOrDebitCardOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Success Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.successScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Notification".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.notificationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Notification - Offer".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.notificationOfferScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Notification - Feed".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.notificationFeedScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Notification - Activity".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.notificationActivityScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Change Name".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.changeNameScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Change Name One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.changeNameOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Gender".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.genderScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Gender - Choose".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.genderChooseScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Birthday".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.birthdayScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Birthday - Choose Date".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.birthdayChooseDateScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Email".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.emailScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Email - Form Active".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.emailFormActiveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Phone Number".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.phoneNumberScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Phone Number One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.phoneNumberOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Change Password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.changePasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Change Password One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.changePasswordOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Change Password - Wrong".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.changePasswordWrongScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Order".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.orderScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Order Details".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.orderDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Add Address".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addAddressScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Add Address One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addAddressOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Add Payment".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addPaymentScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Credit Card And Debit".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.creditCardAndDebitScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Add Card".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addCardScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Add Card - Form Active".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.addCardFormActiveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Add Card - Wrong Form".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.addCardWrongFormScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Lailyfa Febrina Card".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.lailyfaFebrinaCardScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
