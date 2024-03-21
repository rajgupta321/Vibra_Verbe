import '../credit_card_and_debit_screen/widgets/creditcardlist_item_widget.dart';import 'controller/credit_card_and_debit_controller.dart';import 'models/creditcardlist_item_model.dart';import 'package:flutter/material.dart';import 'package:vibra_verve/core/app_export.dart';import 'package:vibra_verve/widgets/custom_elevated_button.dart';class CreditCardAndDebitScreen extends GetWidget<CreditCardAndDebitController> {const CreditCardAndDebitScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [_buildArrowLeftRow(), Divider(), SizedBox(height: 15.v), _buildCreditCardList()])), bottomNavigationBar: _buildAddCardButton())); }
/// Section Widget
Widget _buildArrowLeftRow() { return Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 25.v), decoration: AppDecoration.fillOnErrorContainer, child: Row(children: [CustomImageView(imagePath: ImageConstant.imgArrowLeftBlueGray300, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(bottom: 2.v), onTap: () {onTapImgArrowLeft();}), Padding(padding: EdgeInsets.only(left: 12.h, bottom: 2.v), child: Text("msg_credit_card_and".tr, style: theme.textTheme.titleMedium))])); }
/// Section Widget
Widget _buildCreditCardList() { return Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: controller.creditCardAndDebitModelObj.value.creditcardlistItemList.value.length, itemBuilder: (context, index) {CreditcardlistItemModel model = controller.creditCardAndDebitModelObj.value.creditcardlistItemList.value[index]; return CreditcardlistItemWidget(model);}))); }
/// Section Widget
Widget _buildAddCardButton() {
 return CustomElevatedButton(
  onPressed: (){
   Get.toNamed('/add_card_form_active_screen');
  },
     text: "lbl_add_card".tr,
     margin: EdgeInsets.only(
         left: 16.h,
         right: 16.h,
         bottom: 50.v
     )); }

/// Navigates to the previous screen.
onTapImgArrowLeft() { Get.back(); }
 }
