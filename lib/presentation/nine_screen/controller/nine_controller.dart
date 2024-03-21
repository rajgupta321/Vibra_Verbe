import 'package:vibra_verve/core/app_export.dart';import 'package:vibra_verve/presentation/nine_screen/models/nine_model.dart';/// A controller class for the NineScreen.
///
/// This class manages the state of the NineScreen, including the
/// current nineModelObj
class NineController extends GetxController {Rx<NineModel> nineModelObj = NineModel().obs;

Rx<int> sliderIndex = 0.obs;

 }
