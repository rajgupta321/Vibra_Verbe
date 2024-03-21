import '../models/usonly2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vibra_verve/core/app_export.dart';

// ignore: must_be_immutable
class Usonly2ItemWidget extends StatelessWidget {
  Usonly2ItemWidget(
    this.usonly2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Usonly2ItemModel usonly2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Theme(
        data: ThemeData(
          canvasColor: Colors.transparent,
        ),
        child: RawChip(
          padding: EdgeInsets.all(16.h),
          showCheckmark: false,
          labelPadding: EdgeInsets.zero,
          label: Text(
            usonly2ItemModelObj.uSOnly!.value,
            style: TextStyle(
              color: (usonly2ItemModelObj.isSelected?.value ?? false)
                  ? theme.colorScheme.primary
                  : appTheme.blueGray300,
              fontSize: 12.fSize,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
          selected: (usonly2ItemModelObj.isSelected?.value ?? false),
          backgroundColor: Colors.transparent,
          selectedColor: appTheme.lightBlueA200.withOpacity(0.1),
          shape: (usonly2ItemModelObj.isSelected?.value ?? false)
              ? RoundedRectangleBorder(
                  side: BorderSide.none,
                  borderRadius: BorderRadius.circular(
                    5.h,
                  ),
                )
              : RoundedRectangleBorder(
                  side: BorderSide(
                    color: appTheme.blue50,
                    width: 1.h,
                  ),
                  borderRadius: BorderRadius.circular(
                    5.h,
                  ),
                ),
          onSelected: (value) {
            usonly2ItemModelObj.isSelected!.value = value;
          },
        ),
      ),
    );
  }
}
