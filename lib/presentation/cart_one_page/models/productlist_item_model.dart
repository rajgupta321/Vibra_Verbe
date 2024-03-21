import '../../../core/app_export.dart';/// This class is used in the [productlist_item_widget] screen.
class ProductlistItemModel {ProductlistItemModel({this.productImage, this.productName, this.productImage1, this.productPrice, this.thumbsUpCount, this.id, }) { productImage = productImage  ?? Rx(ImageConstant.imgImage1464);productName = productName  ?? Rx("TMA-2 HD Wireless\n(TMA’s fav product)");productImage1 = productImage1  ?? Rx(ImageConstant.imgSystemIcon24pxLove);productPrice = productPrice  ?? Rx("Rp. 1.500.000");thumbsUpCount = thumbsUpCount  ?? Rx("1");id = id  ?? Rx(""); }

Rx<String>? productImage;

Rx<String>? productName;

Rx<String>? productImage1;

Rx<String>? productPrice;

Rx<String>? thumbsUpCount;

Rx<String>? id;

 }
