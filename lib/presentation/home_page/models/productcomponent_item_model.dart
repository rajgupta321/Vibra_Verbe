import '../../../core/app_export.dart';
/// This class is used in the [productcomponent_item_widget] screen.
class ProductcomponentItemModel {
 ProductcomponentItemModel({
     this.productImage,
  this.productName,
  this.productPrice,
  this.ratingText,
  this.reviewCount,
  this.id,
 })
{
 productImage = productImage  ?? Rx(ImageConstant.imgImage18);
 productName = productName  ?? Rx("TMA-2 HD Wireless");
 productPrice = productPrice  ?? Rx("Rs. 1.500.000");
 ratingText = ratingText  ?? Rx("4.6");
 reviewCount = reviewCount  ?? Rx("86 Reviews");
 id = id  ?? Rx(""); }

Rx<String>? productImage;

Rx<String>? productName;

Rx<String>? productPrice;

Rx<String>? ratingText;

Rx<String>? reviewCount;

Rx<String>? id;

 }


 ///For APIs
// import '../../../core/app_export.dart';
//
// class ProductcomponentItemModel {
//  ProductcomponentItemModel({
//   this.id,
//   this.title,
//   this.description,
//   this.price,
//   this.discountPercentage,
//   this.rating,
//   this.stock,
//   this.brand,
//   this.category,
//   this.thumbnail,
//   this.images,
//  }) {
//   id = id ?? Rx<String>("");
//   title = title ?? Rx<String>("TMA-2 HD Wireless");
//   description = description ?? Rx<String>("An apple mobile which is nothing like apple");
//   price = price ?? Rx<double>(0.0);
//   discountPercentage = discountPercentage ?? Rx<double>(0.0);
//   rating = rating ?? Rx<double>(0.0);
//   stock = stock ?? Rx<int>(0);
//   brand = brand ?? Rx<String>("Apple");
//   category = category ?? Rx<String>("smartphones");
//   thumbnail = thumbnail ?? Rx<String>("...");
//   images = images ?? RxList<String>(["...", "..."]);
//  }
//
//  Rx<String>? id;
//  Rx<String>? title;
//  Rx<String>? description;
//  Rx<double>? price;
//  Rx<double>? discountPercentage;
//  Rx<double>? rating;
//  Rx<int>? stock;
//  Rx<String>? brand;
//  Rx<String>? category;
//  Rx<String>? thumbnail;
//  RxList<String>? images;
// }