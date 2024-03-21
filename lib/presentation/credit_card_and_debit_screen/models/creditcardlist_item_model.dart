import '../../../core/app_export.dart';/// This class is used in the [creditcardlist_item_widget] screen.
class CreditcardlistItemModel {CreditcardlistItemModel({this.text1, this.text2, this.text3, this.text4, this.text5, this.id, }) { text1 = text1  ?? Rx("6326    9124    8124    9875");text2 = text2  ?? Rx("CARD HOLDER");text3 = text3  ?? Rx("Lailyfa Febrina");text4 = text4  ?? Rx("CARD SAVE");text5 = text5  ?? Rx("19/2042");id = id  ?? Rx(""); }

Rx<String>? text1;

Rx<String>? text2;

Rx<String>? text3;

Rx<String>? text4;

Rx<String>? text5;

Rx<String>? id;

 }
