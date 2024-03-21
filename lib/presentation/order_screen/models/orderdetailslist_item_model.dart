import '../../../core/app_export.dart';/// This class is used in the [orderdetailslist_item_widget] screen.
class OrderdetailslistItemModel {OrderdetailslistItemModel({this.lqnsujk, this.month, this.orderStatus, this.shipping, this.items, this.itemsPurchased, this.price, this.price1, this.id, }) { lqnsujk = lqnsujk  ?? Rx("LQNSU346JK");month = month  ?? Rx("Order at Lafyuu : August 1, 2017");orderStatus = orderStatus  ?? Rx("Order Status");shipping = shipping  ?? Rx("Shipping");items = items  ?? Rx("Items");itemsPurchased = itemsPurchased  ?? Rx("2 Items purchased");price = price  ?? Rx("Price");price1 = price1  ?? Rx("299,43");id = id  ?? Rx(""); }

Rx<String>? lqnsujk;

Rx<String>? month;

Rx<String>? orderStatus;

Rx<String>? shipping;

Rx<String>? items;

Rx<String>? itemsPurchased;

Rx<String>? price;

Rx<String>? price1;

Rx<String>? id;

 }
