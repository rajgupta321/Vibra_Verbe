import 'frame1_item_model.dart';import '../../../core/app_export.dart';import 'productcomponent2_item_model.dart';/// This class defines the variables used in the [ten_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TenModel {Rx<List<Frame1ItemModel>> frame1ItemList = Rx(List.generate(1,(index) => Frame1ItemModel()));

Rx<List<Productcomponent2ItemModel>> productcomponent2ItemList = Rx([Productcomponent2ItemModel(productImage:ImageConstant.imgImage18.obs,productName: "TMA-2 HD Wireless".obs,productPrice: "Rp. 1.500.000".obs,productRating: "4.6".obs,productReviews: "86 Reviews".obs),Productcomponent2ItemModel(productImage:ImageConstant.imgImage5.obs,productName: "TMA-2 HD Wireless".obs,productPrice: "Rp. 1.500.000".obs,productRating: "4.6".obs,productReviews: "86 Reviews".obs),Productcomponent2ItemModel(productImage:ImageConstant.imgImage5125x125.obs,productName: "TMA-2 HD Wireless".obs,productPrice: "Rp. 1.500.000".obs)]);

 }
