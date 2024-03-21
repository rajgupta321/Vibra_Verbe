import 'package:vibra_verve/core/app_export.dart';import 'package:vibra_verve/presentation/thirteen_screen/models/thirteen_model.dart';/// A controller class for the ThirteenScreen.
///
/// This class manages the state of the ThirteenScreen, including the
/// current thirteenModelObj
class ThirteenController extends GetxController {Rx<ThirteenModel> thirteenModelObj = ThirteenModel().obs;

Rx<int> sliderIndex = 0.obs;

 }
