import 'package:vibra_verve/core/app_export.dart';
import 'package:vibra_verve/presentation/filter_set_price_tab_container_screen/models/filter_set_price_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the FilterSetPriceTabContainerScreen.
///
/// This class manages the state of the FilterSetPriceTabContainerScreen, including the
/// current filterSetPriceTabContainerModelObj
class FilterSetPriceTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<FilterSetPriceTabContainerModel> filterSetPriceTabContainerModelObj =
      FilterSetPriceTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));
}
