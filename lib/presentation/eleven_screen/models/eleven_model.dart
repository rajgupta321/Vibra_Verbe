import 'widget_item_model.dart';import '../../../core/app_export.dart';import 'favorite_item_model.dart';import 'productcomponent3_item_model.dart';/// This class defines the variables used in the [eleven_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ElevenModel {Rx<List<WidgetItemModel>> widgetItemList = Rx(List.generate(1,(index) => WidgetItemModel()));

Rx<List<FavoriteItemModel>> favoriteItemList = Rx([FavoriteItemModel(favorite:ImageConstant.imgFavoriteRedA700.obs),FavoriteItemModel(favorite:ImageConstant.imgFavoriteRedA700.obs)]);

Rx<List<Productcomponent3ItemModel>> productcomponent3ItemList = Rx([Productcomponent3ItemModel(productImage:ImageConstant.imgImage18.obs,productName: "TMA-2 HD Wireless".obs,productPrice: "Rp. 1.500.000".obs,productRating: "4.6".obs,productReviews: "86 Reviews".obs),Productcomponent3ItemModel(productImage:ImageConstant.imgImage5.obs,productName: "TMA-2 HD Wireless".obs,productPrice: "Rp. 1.500.000".obs,productRating: "4.6".obs,productReviews: "86 Reviews".obs),Productcomponent3ItemModel(productImage:ImageConstant.imgImage5125x125.obs,productName: "TMA-2 HD Wireless".obs,productPrice: "Rp. 1.500.000".obs)]);

 }
