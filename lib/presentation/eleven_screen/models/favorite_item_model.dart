import '../../../core/app_export.dart';/// This class is used in the [favorite_item_widget] screen.
class FavoriteItemModel {FavoriteItemModel({this.favorite, this.id, }) { favorite = favorite  ?? Rx(ImageConstant.imgFavoriteRedA700);id = id  ?? Rx(""); }

Rx<String>? favorite;

Rx<String>? id;

 }
