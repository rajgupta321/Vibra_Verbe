import 'package:vibra_verve/core/app_export.dart';import 'package:vibra_verve/presentation/cart_one_page/models/cart_one_model.dart';import 'package:flutter/material.dart';/// A controller class for the CartOnePage.
///
/// This class manages the state of the CartOnePage, including the
/// current cartOneModelObj
class CartOneController extends GetxController {CartOneController(this.cartOneModelObj);

TextEditingController enterCouponCodeController = TextEditingController();

Rx<CartOneModel> cartOneModelObj;

@override void onClose() { super.onClose(); enterCouponCodeController.dispose(); }
 }
