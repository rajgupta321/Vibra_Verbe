import '../../../core/app_export.dart';
/// This class is used in the [landingpageheadphone_item_widget] screen.
class LandingpageheadphoneItemModel {
 LandingpageheadphoneItemModel(
     {this.image, this.id, }) {
  image = image  ?? Rx(ImageConstant.imgImage6);id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? id;

 }

///FOR API
// import '../../../core/app_export.dart';
//
// class LandingpageheadphoneItemModel {
//  LandingpageheadphoneItemModel({this.image, this.id});
//
//  Rx<String>? image;
//  Rx<String>? id;
//
//  factory LandingpageheadphoneItemModel.fromJson(Map<String, dynamic> json) {
//   return LandingpageheadphoneItemModel(
//    image: Rx<String>(json['image'] ?? ImageConstant.imgImage6),
//    id: Rx<String>(json['id'] ?? ""),
//   );
//  }
// }
