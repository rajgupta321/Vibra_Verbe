import '../../../core/app_export.dart';/// This class is used in the [productcomponent2_item_widget] screen.
class Productcomponent2ItemModel {Productcomponent2ItemModel({this.productImage, this.productName, this.productPrice, this.productRating, this.productReviews, this.id, }) { productImage = productImage  ?? Rx(ImageConstant.imgImage18);productName = productName  ?? Rx("TMA-2 HD Wireless");productPrice = productPrice  ?? Rx("Rp. 1.500.000");productRating = productRating  ?? Rx("4.6");productReviews = productReviews  ?? Rx("86 Reviews");id = id  ?? Rx(""); }

Rx<String>? productImage;

Rx<String>? productName;

Rx<String>? productPrice;

Rx<String>? productRating;

Rx<String>? productReviews;

Rx<String>? id;

 }
