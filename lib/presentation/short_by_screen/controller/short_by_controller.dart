import 'package:vibra_verve/core/app_export.dart';import 'package:vibra_verve/presentation/short_by_screen/models/short_by_model.dart';/// A controller class for the ShortByScreen.
///
/// This class manages the state of the ShortByScreen, including the
/// current shortByModelObj
class ShortByController extends GetxController {Rx<ShortByModel> shortByModelObj = ShortByModel().obs;

 }
