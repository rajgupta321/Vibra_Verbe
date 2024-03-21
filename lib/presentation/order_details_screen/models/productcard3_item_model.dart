import '../../../core/app_export.dart';/// This class is used in the [productcard3_item_widget] screen.
class Productcard3ItemModel {Productcard3ItemModel({this.image, this.title, this.price, this.image1, this.id, }) { image = image  ?? Rx(ImageConstant.imgImage13);title = title  ?? Rx("Nikon D5600 DSLR Camera with AF-P 18-55 mm + AF-P 70-300 mm VR Kit");price = price  ?? Rx("Rs 29009,43");image1 = image1  ?? Rx(ImageConstant.imgSystemIcon24pxLove);id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? title;

Rx<String>? price;

Rx<String>? image1;

Rx<String>? id;

 }
