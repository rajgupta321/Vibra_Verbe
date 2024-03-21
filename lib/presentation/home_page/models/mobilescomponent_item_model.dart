import '../../../core/app_export.dart';
/// This class is used in the [mobilescomponent_item_widget] screen.
class MobilescomponentItemModel {MobilescomponentItemModel({
 this.mobileImage, this.mobileText, this.id, })
{ mobileImage = mobileImage  ?? Rx(ImageConstant.imgImage8);
 mobileText = mobileText  ?? Rx("Mobiles");id = id  ?? Rx(""); }

Rx<String>? mobileImage;

Rx<String>? mobileText;

Rx<String>? id;

 }

 ///FOR API
// import '../../../core/app_export.dart';
//
// class MobilescomponentItemModel {
//  MobilescomponentItemModel({this.mobileImage, this.mobileText, this.id});
//
//  Rx<String>? mobileImage;
//  Rx<String>? mobileText;
//  Rx<String>? id;
//
//  factory MobilescomponentItemModel.fromJson(Map<String, dynamic> json) {
//   return MobilescomponentItemModel(
//    mobileImage: Rx<String>(json['mobileImage'] ?? ImageConstant.imgImage8),
//    mobileText: Rx<String>(json['mobileText'] ?? "Mobiles"),
//    id: Rx<String>(json['id'] ?? ""),
//   );
//  }
// }
