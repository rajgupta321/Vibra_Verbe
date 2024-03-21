import '../../../core/app_export.dart';import 'productlist_item_model.dart';/// This class defines the variables used in the [cart_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class CartOneModel {Rx<List<ProductlistItemModel>>
productlistItemList = Rx(
    [ProductlistItemModel(
        productImage:ImageConstant.imgImage1464.obs,
        productName: "TMA-2 HD Wireless\n(TMA’s fav product)".obs,
        productImage1:ImageConstant.imgSystemIcon24pxLove.obs,
        productPrice: "Rp. 1.500.000".obs,thumbsUpCount: "1".obs),
     ProductlistItemModel(productImage:ImageConstant.imgImage11.obs,
         productName: "TMA-2 HD Wireless\n(TMA’s fav product)".obs,
         productImage1:ImageConstant.imgSystemIcon24pxLoveBlueGray300.obs,
         productPrice: "Rp. 1.500.000".obs,thumbsUpCount: "1".obs)]);

 }
