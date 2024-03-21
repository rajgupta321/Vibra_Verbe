import 'package:vibra_verve/core/app_export.dart';
import 'package:vibra_verve/presentation/splash_screen/models/splash_model.dart';/// A controller class for the SplashScreen.
///
/// This class manages the state of the SplashScreen, including the
/// current splashModelObj
class SplashController extends
GetxController {Rx<SplashModel> splashModelObj = SplashModel().obs;

Rx<int> sliderIndex = 0.obs;

}
