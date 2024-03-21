import '../../../core/app_export.dart';/// This class is used in the [productcomponentgrid_item_widget] screen.
class ProductcomponentgridItemModel {ProductcomponentgridItemModel({this.productImage, this.productName, this.productPrice, this.ratingText, this.reviewCount, this.id, }) { productImage = productImage  ?? Rx(ImageConstant.imgImage5);productName = productName  ?? Rx("TMA-2 HD Wireless");productPrice = productPrice  ?? Rx("Rp. 1.500.000");ratingText = ratingText  ?? Rx("4.6");reviewCount = reviewCount  ?? Rx("86 Reviews");id = id  ?? Rx(""); }

Rx<String>? productImage;

Rx<String>? productName;

Rx<String>? productPrice;

Rx<String>? ratingText;

Rx<String>? reviewCount;

Rx<String>? id;

 }
