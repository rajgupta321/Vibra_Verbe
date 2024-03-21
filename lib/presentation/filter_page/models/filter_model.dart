import 'alllistings_item_model.dart';import 'usonly_item_model.dart';import 'freereturnssection_item_model.dart';import '../../../core/app_export.dart';/// This class defines the variables used in the [filter_page],
/// and is typically used to hold data that is passed between different parts of the application.
class FilterModel {Rx<List<AlllistingsItemModel>> alllistingsItemList = Rx(List.generate(5,(index) =>AlllistingsItemModel()));

Rx<List<UsonlyItemModel>> usonlyItemList = Rx(List.generate(4,(index) =>UsonlyItemModel()));

Rx<List<FreereturnssectionItemModel>> freereturnssectionItemList = Rx(List.generate(11,(index) =>FreereturnssectionItemModel()));

 }
