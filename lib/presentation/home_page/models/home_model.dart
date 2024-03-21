import 'package:vibra_verve/data/apiClient/api_client.dart';
import 'package:vibra_verve/presentation/home_page/home_page.dart';
import '../../../core/app_export.dart';
import 'landingpageheadphone_item_model.dart';
import 'mobilescomponent_item_model.dart';
import 'productcard_item_model.dart';
import 'productcomponent_item_model.dart';
/// This class defines the variables used in the [HomePage],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {
 Rx<List<LandingpageheadphoneItemModel>>
landingpageheadphoneItemList =
Rx([LandingpageheadphoneItemModel(
    image:ImageConstant.imgImage6.obs),
 LandingpageheadphoneItemModel(
     image:ImageConstant.imgImage6121x139.obs)]);

Rx<List<MobilescomponentItemModel>>
mobilescomponentItemList =
Rx([MobilescomponentItemModel(
    mobileImage:ImageConstant.imgImage8.obs,
    mobileText: "Mobiles".obs),
 MobilescomponentItemModel(
     mobileImage:ImageConstant.imgImage9.obs,
     mobileText: "Laptops".obs),
 MobilescomponentItemModel(
     mobileImage:ImageConstant.imgImage10.obs,
     mobileText: "Headphones".obs),
 MobilescomponentItemModel(
     mobileImage:ImageConstant.imgImage11.obs,
     mobileText: "TVs".obs),
 MobilescomponentItemModel(
     mobileImage:ImageConstant.imgImage13.obs,
     mobileText: "Cameras".obs),
 MobilescomponentItemModel(
     mobileImage:ImageConstant.imgImage16.obs,
     mobileText: "Speakers".obs),
 MobilescomponentItemModel(
     mobileImage:ImageConstant.imgImage14.obs,
     mobileText: "Computers".obs),
 MobilescomponentItemModel(
     mobileImage:ImageConstant.imgImage15.obs,
     mobileText: "Games".obs)]);

Rx<List<ProductcardItemModel>> productcardItemList =
Rx([ProductcardItemModel(
    freeshipping: "Free shipping".obs,
    image:ImageConstant.imgMacbookAirRetinaM1240x16073x115.obs,
    title: "Macbook Air M1".obs,price: "Rs. 29,999 ".obs),
 ProductcardItemModel(freeshipping: "Free shipping".obs,
     image:ImageConstant.img5d02da5df552836.obs,
     title: "Sony WH/1000XM4".obs,
     price: "Rs. 4,999 ".obs)]);
Rx<List<ProductcomponentItemModel>>
productcomponentItemList = Rx(
    [ProductcomponentItemModel(
        productImage:ImageConstant.imgImage18.obs,
        productName: "TMA-2 HD Wireless".obs,
        productPrice: "Rs. 1.500.000".obs,
        ratingText: "4.6".obs,
        reviewCount: "86 Reviews".obs),
     ProductcomponentItemModel(
         productImage:ImageConstant.imgImage5.obs,
         productName: "TMA-2 HD Wireless".obs,
         productPrice: "Rs. 1.500.000".obs,
         ratingText: "4.6".obs,
         reviewCount: "86 Reviews".obs),
     ProductcomponentItemModel(
         productImage:ImageConstant.imgImage5125x125.obs,
         productName: "TMA-2 HD Wireless".obs,
         productPrice: "Rp. 1.500.000".obs)]);
 }

/// For APIs
/// For example ProductcomponentItemModel
// Rx<List<ProductcomponentItemModel>> productcomponentItemList = Rx([
//  ProductcomponentItemModel(
//   id: Rx("1"),
//   title: Rx("iPhone 9"),
//   description: Rx("An apple mobile which is nothing like apple"),
//   price: Rx(549.0),
//   discountPercentage: Rx(12.96),
//   rating: Rx(4.69),
//   stock: Rx(94),
//   brand: Rx("Apple"),
//   category: Rx("smartphones"),
//   thumbnail: Rx("..."),
//   images: RxList(["...", "..."]),
//  ),
//  // Add more ProductcomponentItemModel instances here if needed
// ]);