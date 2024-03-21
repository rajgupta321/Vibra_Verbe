import 'controller/short_by_controller.dart';import 'package:flutter/material.dart';import 'package:vibra_verve/core/app_export.dart';import 'package:vibra_verve/widgets/app_bar/appbar_leading_image.dart';import 'package:vibra_verve/widgets/app_bar/appbar_subtitle_seven.dart';import 'package:vibra_verve/widgets/app_bar/custom_app_bar.dart';class ShortByScreen extends GetWidget<ShortByController> {const ShortByScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: SizedBox(width: double.maxFinite, child: Column(children: [Divider(), _buildBestMatch(), _buildTimeEndingSoonest(), _buildTimeNewlyListed(), _buildPriceShipping(), _buildPriceShipping2(), SizedBox(height: 5.v), _buildDistanceNearest()])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 40.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftBlueGray300, margin: EdgeInsets.only(left: 16.h, top: 26.v, bottom: 28.v), onTap: () {onTapArrowLeft();}), title: AppbarSubtitleSeven(text: "lbl_sort_by".tr, margin: EdgeInsets.only(left: 12.h)), styleType: Style.bgFill_1); } 
/// Section Widget
Widget _buildBestMatch() { return Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 17.v), decoration: AppDecoration.fillOnErrorContainer, child: Text("lbl_best_match".tr, style: CustomTextStyles.labelLargePrimarySemiBold)); } 
/// Section Widget
Widget _buildTimeEndingSoonest() { return Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 17.v), decoration: AppDecoration.fillBlue, child: Text("msg_time_ending_soonest".tr, style: CustomTextStyles.labelLargeBlack900SemiBold)); } 
/// Section Widget
Widget _buildTimeNewlyListed() { return Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 17.v), decoration: AppDecoration.fillOnErrorContainer, child: Text("msg_time_newly_listed".tr, style: CustomTextStyles.labelLargeBlack900SemiBold)); } 
/// Section Widget
Widget _buildPriceShipping() { return Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 17.v), decoration: AppDecoration.fillOnErrorContainer, child: Text("msg_price_shipping".tr, style: CustomTextStyles.labelLargeBlack900SemiBold)); } 
/// Section Widget
Widget _buildPriceShipping2() { return Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 17.v), decoration: AppDecoration.fillOnErrorContainer, child: Text("msg_price_shipping2".tr, style: CustomTextStyles.labelLargeBlack900SemiBold)); } 
/// Section Widget
Widget _buildDistanceNearest() { return Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 17.v), decoration: AppDecoration.fillOnErrorContainer, child: Text("msg_distance_nearest".tr, style: CustomTextStyles.labelLargeBlack900SemiBold)); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
