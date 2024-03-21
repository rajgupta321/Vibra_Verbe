import 'package:vibra_verve/core/app_export.dart';import 'package:vibra_verve/presentation/birthday_choose_date_screen/models/birthday_choose_date_model.dart';import 'package:table_calendar/table_calendar.dart';/// A controller class for the BirthdayChooseDateScreen.
///
/// This class manages the state of the BirthdayChooseDateScreen, including the
/// current birthdayChooseDateModelObj
class BirthdayChooseDateController extends GetxController {
 Rx<BirthdayChooseDateModel> birthdayChooseDateModelObj = BirthdayChooseDateModel().obs;

DateTime? rangeStart;

DateTime? rangeEnd;

DateTime? selectedDay;

Rx<DateTime> focusedDay = DateTime.now().obs;

Rx<RangeSelectionMode> rangeSelectionMode = RangeSelectionMode.toggledOn.obs;

 }
