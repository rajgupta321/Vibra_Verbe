import '../controller/eleven_controller.dart';
import '../models/favorite_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vibra_verve/core/app_export.dart';

// ignore: must_be_immutable
class FavoriteItemWidget extends StatelessWidget {
  FavoriteItemWidget(
    this.favoriteItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FavoriteItemModel favoriteItemModelObj;

  var controller = Get.find<ElevenController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CustomImageView(
        imagePath: favoriteItemModelObj.favorite!.value,
        height: 16.v,
        width: 19.h,
        margin: EdgeInsets.only(
          left: 306.h,
          bottom: 300.v,
        ),
      ),
    );
  }
}
