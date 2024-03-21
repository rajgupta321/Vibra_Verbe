import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/account_controller.dart';
import 'models/account_model.dart';
import 'package:flutter/material.dart';
import 'package:vibra_verve/core/app_export.dart';

class AccountPage extends StatelessWidget {
  AccountPage({Key? key})
      : super(
          key: key,
        );

  AccountController controller = Get.put(AccountController(AccountModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.fillOnErrorContainer,
                child: Column(
                  children: [
                    _buildAccountSection(),
                    Divider(),
                    SizedBox(height: 14.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Row(children: [
                              CustomImageView(onTap: () {

                              },
                                  imagePath: ImageConstant.imgProfilePicture,
                                  height: 72.adaptSize,
                                  width: 72.adaptSize,
                                  radius: BorderRadius.circular(36.h)),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 16.h, top: 13.v, bottom: 13.v),
                                  child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        TextButton(onPressed:() {
                                          Get.toNamed('/change_name_screen');
                                        }, child: Text("lbl_raj_gupta".tr,
                                            style:
                                            theme.textTheme.titleSmall),style: ButtonStyle( )),
                                        // SizedBox(height: 6.v),
                                        TextButton(onPressed: () {

                                        }, child: Text("lbl_derlaxy".tr,
                                            style: theme.textTheme.bodySmall),)
                                      ])),
                            ]))),
                    Divider(indent: 14,endIndent: 14),
                    _buildProfileRow(
                      onTap: () {
                        Get.toNamed('/profile_screen');
                      },
                    ),
                    Divider(indent: 14,endIndent: 14,),
                    _buildOrderRow(
                      onTap: () {
                        Get.toNamed('/order_screen');
                      },
                    ),
                    Divider(indent: 14,endIndent: 14),
                    SizedBox(height: 5.v),
                    _buildAddressRow(
                      onTap: () {
                        Get.toNamed('/add_address_screen');
                      },
                    ),
                    Divider(indent: 14,endIndent: 14),
                    _buildPaymentRow(
                      onTap: () {
                        Get.toNamed('/payment_method_screen');
                      },
                    ),
                    Divider(indent: 14,endIndent: 14),

                    _buildSelectLanguage(
                      onTap: () {
                        Get.toNamed('/language_choose_screen');
                      },
                    ),
                    Divider(indent: 14,endIndent: 14),
                    _buildRateAppRow(
                      onTap: () {
                        Get.defaultDialog(
                          title: 'lbl_would_you_like_to_rate_us_on_play_store'.tr,
                          middleText: 'Your_feedback_helps_us_make_your_experience_better'.tr,
                          middleTextStyle: TextStyle(fontSize: 10,color: Colors.grey),
                          titleStyle: TextStyle(color: Colors.black),
                          actions: [
                            ElevatedButton(
                              onPressed: () {
                                // Implement the logic to open Play Store for rating
                                // For example, use package:url_launcher to open the Play Store URL
                                // launch('Play Store URL');
                                Get.back(); // Close the dialog
                                 },
                                style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,),
                               child: Text("lbl_yes".tr),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Get.back(); // Close the dialog
                               },
                               style: ElevatedButton.styleFrom(
                               backgroundColor: Colors.red,),
                              child: Text('lbl_no'.tr),
                            ),
                          ],
                        );
                      },
                    ),
                    Divider(height: 25.v,thickness: 4),
                    CustomElevatedButton( onPressed: (){
                      Get.defaultDialog(
                        title: 'lbl_log_out'.tr,
                        middleText: 'lbl_are_you_sure_you_want_to_log_out'.tr,
                        confirm: ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                          onPressed: () {
                            // Log out logic
                            Get.offAllNamed('/login_screen'); // Navigate to the login screen
                          },
                          child: Text('lbl_log_out'.tr),
                        ),
                        cancel: ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                          onPressed: () {
                            Get.back(); // Close the dialog
                          },
                          child: Text('lbl_cancel'.tr),
                        ),
                      );
                    },
                      height: 40.v,
                      width: 300.h,
                      text: "lbl_log_out".tr,
                      buttonStyle: CustomButtonStyles.fillOnErrorContainer1,
                      buttonTextStyle: CustomTextStyles.bodyMediumRobotoPrimary,),
                    Divider(height:20.v,thickness: 4,)
                  ],
                ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  Widget _buildAccountSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 31.h,
        vertical: 26.v,
      ),
      decoration: AppDecoration.fillOnErrorContainer,
      child: Text(
        "lbl_account2".tr,
        style: CustomTextStyles.titleMedium_1,
      ),
    );
  }

  /// Common widget
  Widget _buildOrderSection({
    required String systemIconImage,
    required String orderLabel,
  }) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillBlue,
      child: Row(
        children: [
          CustomImageView(
            imagePath: systemIconImage,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.h),
            child: Text(
              orderLabel,
              style: theme.textTheme.titleMedium!.copyWith(
                color: appTheme.black900,
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget _buildProfileRow({VoidCallback? onTap}) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.all(16.h),
            decoration: AppDecoration.fillOnErrorContainer,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgLock,
                  color: Colors.indigoAccent,
                  height: 24.adaptSize,
                  width: 24.adaptSize),
              Padding(
                  padding: EdgeInsets.only(left: 16.h, top: 2.v, bottom: 3.v),
                  child: Text("lbl_profile".tr,
                      style: CustomTextStyles.labelLargePoppinsBlack900)),
              Spacer(),
            ])));
  }
  Widget _buildOrderRow({VoidCallback? onTap}) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.all(16.h),
            decoration: AppDecoration.fillOnErrorContainer,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomImageView(color: Colors.deepOrange,
                  imagePath: ImageConstant.imgSystemIcon24pxBag,
                  height: 24.adaptSize,
                  width: 24.adaptSize),
              Padding(
                  padding: EdgeInsets.only(left: 16.h, top: 2.v, bottom: 3.v),
                  child: Text("lbl_orders".tr,
                      style: CustomTextStyles.labelLargePoppinsBlack900)),
              Spacer(),
            ])));
  }

  Widget _buildAddressRow({VoidCallback? onTap}) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.all(16.h),
            decoration: AppDecoration.fillOnErrorContainer,
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(Icons.edit_location_alt_outlined,color: Colors.cyan),
                      SizedBox(width: 17,),
                      Text("lbl_address".tr,
                          style: CustomTextStyles.labelLargePoppinsBlack900),
                    ],
                  ),
              Spacer(),
            ])));
  }
  Widget _buildPaymentRow({VoidCallback? onTap}) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.all(16.h),
            decoration: AppDecoration.fillOnErrorContainer,
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(Icons.credit_card_sharp,color: Colors.pink.shade900),
                      SizedBox(width: 17,),
                      Text("lbl_saved_card_and_wallet".tr,
                          style: CustomTextStyles.labelLargePoppinsBlack900),
                    ],
                  ),


              // CustomImageView(color: Colors.lime,
              //     fit: BoxFit.fill,
              //     imagePath: ImageConstant.imgSystemIcon24pxCredit,
              //     height: 24.adaptSize,
              //     width: 24.adaptSize),
              // Padding(
              //     padding: EdgeInsets.only(left: 16.h, top: 2.v, bottom: 3.v),
              //     child: Text("lbl_saved_card_and_wallet".tr,
              //         style: CustomTextStyles.labelLargePoppinsBlack900)),
              Spacer(),
            ])));
  }

  Widget _buildSelectLanguage({VoidCallback? onTap}) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.all(16.h),
            decoration: AppDecoration.fillOnErrorContainer,
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(Icons.language,color: Colors.blue),
                      SizedBox(width: 17,),
                      Text("lbl_select_language".tr,
                          style: CustomTextStyles.labelLargePoppinsBlack900),
                    ],
                  ),
                  Spacer(),
                ])));
  }

  Widget _buildRateAppRow({VoidCallback? onTap}) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.all(16.h),
            decoration: AppDecoration.fillOnErrorContainer,
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(Icons.star,color: Colors.amber),
                      SizedBox(width: 17,),
                      Text("lbl_rate_vibra_verve".tr,
                          style: CustomTextStyles.labelLargePoppinsBlack900),
                    ],
                  ),
                  Spacer(),
                ])));
  }


  Widget _buildBottomBar() {
    return CustomBottomBar();
  }
}
