import 'package:vibra_verve/core/app_export.dart';import 'package:vibra_verve/presentation/eleven_screen/models/eleven_model.dart';/// A controller class for the ElevenScreen.
///
/// This class manages the state of the ElevenScreen, including the
/// current elevenModelObj
class ElevenController extends GetxController {Rx<ElevenModel> elevenModelObj = ElevenModel().obs;

Rx<int> sliderIndex = 0.obs;

Rx<int> sliderIndex1 = 0.obs;

 }
