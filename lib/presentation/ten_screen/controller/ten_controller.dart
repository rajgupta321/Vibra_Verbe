import 'package:vibra_verve/core/app_export.dart';
import 'package:vibra_verve/presentation/ten_screen/models/ten_model.dart';
/// A controller class for the TenScreen.
///
/// This class manages the state of the TenScreen, including the
/// current tenModelObj
class TenController extends GetxController {
 Rx<TenModel> tenModelObj = TenModel().obs;

Rx<int> sliderIndex = 0.obs;

 }
