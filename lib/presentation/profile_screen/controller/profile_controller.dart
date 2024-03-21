import 'package:vibra_verve/core/app_export.dart';import 'package:vibra_verve/presentation/profile_screen/models/profile_model.dart';/// A controller class for the ProfileScreen.
///
/// This class manages the state of the ProfileScreen, including the
/// current profileModelObj
class ProfileController extends GetxController {
 Rx<DateTime?> selectedDate = Rx<DateTime?>(null);

 Rx<ProfileModel> profileModelObj = ProfileModel().obs;
 static ProfileController get to => Get.find<ProfileController>();

 }
