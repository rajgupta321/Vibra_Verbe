import '../../../core/app_export.dart';/// This class is used in the [productcard_item_widget] screen.
class ProductcardItemModel {
 ProductcardItemModel(
     {this.freeshipping, this.image, this.title, this.price, this.id, })
 { freeshipping = freeshipping  ?? Rx("Free shipping");image = image  ?? Rx(ImageConstant.imgMacbookAirRetinaM1240x16073x115);title = title  ?? Rx("Macbook Air M1");price = price  ?? Rx("Rs. 29,999 ");id = id  ?? Rx(""); }

Rx<String>? freeshipping;

Rx<String>? image;

Rx<String>? title;

Rx<String>? price;

Rx<String>? id;

 }

 ///FOR APIO
// import '../../../core/app_export.dart';
//
// class ProductcardItemModel {
//  ProductcardItemModel({
//   this.freeshipping,
//   this.image,
//   this.title,
//   this.price,
//   this.id,
//  }) {
//   freeshipping = freeshipping ?? Rx("Free shipping");
//   image = image ?? Rx(ImageConstant.imgMacbookAirRetinaM1240x16073x115);
//   title = title ?? Rx("Macbook Air M1");
//   price = price ?? Rx("Rs. 29,999 ");
//   id = id ?? Rx("");
//  }
//
//  Rx<String>? freeshipping;
//  Rx<String>? image;
//  Rx<String>? title;
//  Rx<String>? price;
//  Rx<String>? id;
//
//  factory ProductcardItemModel.fromJson(Map<String, dynamic> json) {
//   return ProductcardItemModel(
//    freeshipping: Rx<String>(json['freeshipping'] ?? "Free shipping"),
//    image: Rx<String>(json['image'] ?? ImageConstant.imgMacbookAirRetinaM1240x16073x115),
//    title: Rx<String>(json['title'] ?? "Macbook Air M1"),
//    price: Rx<String>(json['price'] ?? "Rs. 29,999 "),
//    id: Rx<String>(json['id'] ?? ""),
//   );
//  }
// }
