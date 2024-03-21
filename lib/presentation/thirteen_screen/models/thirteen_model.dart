import 'frame2_item_model.dart';import '../../../core/app_export.dart';import 'productcomponent4_item_model.dart';/// This class defines the variables used in the [thirteen_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ThirteenModel {Rx<List<Frame2ItemModel>> frame2ItemList = Rx(List.generate(1,(index) => Frame2ItemModel()));

Rx<List<Productcomponent4ItemModel>> productcomponent4ItemList = Rx([Productcomponent4ItemModel(productImage:ImageConstant.imgImage1466.obs,productName: "TMA-2 HD Wireless".obs,productPrice: "Rp. 1.500.000".obs,ratingText: "4.6".obs,reviewCount: "86 Reviews".obs),Productcomponent4ItemModel(productImage:ImageConstant.imgImage5.obs,productName: "TMA-2 HD Wireless".obs,productPrice: "Rp. 1.500.000".obs,ratingText: "4.6".obs,reviewCount: "86 Reviews".obs),Productcomponent4ItemModel(productImage:ImageConstant.imgImage5125x125.obs,productName: "TMA-2 HD Wireless".obs,productPrice: "Rp. 1.500.000".obs)]);

 }
