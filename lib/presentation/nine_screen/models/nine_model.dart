import 'frame_item_model.dart';import '../../../core/app_export.dart';import 'productcomponent1_item_model.dart';/// This class defines the variables used in the [nine_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NineModel {Rx<List<FrameItemModel>> frameItemList = Rx(List.generate(1,(index) => FrameItemModel()));

Rx<List<Productcomponent1ItemModel>> productcomponent1ItemList = Rx([Productcomponent1ItemModel(productImage:ImageConstant.imgImage18.obs,productName: "TMA-2 HD Wireless".obs,productPrice: "Rp. 1.500.000".obs,productRating: "4.6".obs,productReviews: "86 Reviews".obs),Productcomponent1ItemModel(productImage:ImageConstant.imgImage5.obs,productName: "TMA-2 HD Wireless".obs,productPrice: "Rp. 1.500.000".obs,productRating: "4.6".obs,productReviews: "86 Reviews".obs),Productcomponent1ItemModel(productImage:ImageConstant.imgImage5125x125.obs,productName: "TMA-2 HD Wireless".obs,productPrice: "Rp. 1.500.000".obs)]);

 }
