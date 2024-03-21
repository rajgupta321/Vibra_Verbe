import 'alllistings2_item_model.dart';import 'usonly2_item_model.dart';import 'freereturns_item_model.dart';import '../../../core/app_export.dart';/// This class defines the variables used in the [filter_set_price_page],
/// and is typically used to hold data that is passed between different parts of the application.
class FilterSetPriceModel {Rx<List<Alllistings2ItemModel>> alllistings2ItemList = Rx(List.generate(3,(index) =>Alllistings2ItemModel()));

Rx<List<Usonly2ItemModel>> usonly2ItemList = Rx(List.generate(4,(index) =>Usonly2ItemModel()));

Rx<List<FreereturnsItemModel>> freereturnsItemList = Rx(List.generate(11,(index) =>FreereturnsItemModel()));

 }
