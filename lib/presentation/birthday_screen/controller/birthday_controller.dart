import 'package:vibra_verve/core/app_export.dart';import 'package:vibra_verve/presentation/birthday_screen/models/birthday_model.dart';/// A controller class for the BirthdayScreen.
///
/// This class manages the state of the BirthdayScreen, including the
/// current birthdayModelObj
class BirthdayController extends GetxController {Rx<BirthdayModel> birthdayModelObj = BirthdayModel().obs;

 }
