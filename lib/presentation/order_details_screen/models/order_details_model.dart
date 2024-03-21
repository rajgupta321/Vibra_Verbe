import '../../../core/app_export.dart';import 'productcard3_item_model.dart';/// This class defines the variables used in the [order_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OrderDetailsModel {Rx<List<Productcard3ItemModel>> productcard3ItemList = Rx([Productcard3ItemModel(image:ImageConstant.imgImage13.obs,title: "Nikon D5600 DSLR Camera with AF-P 18-55 mm + AF-P 70-300 mm VR Kit".obs,price: "Rs 29009,43".obs,image1:ImageConstant.imgSystemIcon24pxLove.obs),Productcard3ItemModel(image:ImageConstant.imgImage14.obs,title: "Acer Nitro Qg271 27 in Full Hd Gaming LCD Monitor with Led Back Light ".obs,price: "Rs 20099,43".obs,image1:ImageConstant.imgSystemIcon24pxLoveBlueGray300.obs)]);

 }
