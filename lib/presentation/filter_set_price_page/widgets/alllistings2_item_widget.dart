import '../models/alllistings2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vibra_verve/core/app_export.dart';

// ignore: must_be_immutable
class Alllistings2ItemWidget extends StatelessWidget {
  Alllistings2ItemWidget(
    this.alllistings2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Alllistings2ItemModel alllistings2ItemModelObj;

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
            alllistings2ItemModelObj.allListings!.value,
            style: TextStyle(
              color: (alllistings2ItemModelObj.isSelected?.value ?? false)
                  ? theme.colorScheme.primary
                  : appTheme.blueGray300,
              fontSize: 12.fSize,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
          selected: (alllistings2ItemModelObj.isSelected?.value ?? false),
          backgroundColor: Colors.transparent,
          selectedColor: appTheme.lightBlueA200.withOpacity(0.1),
          shape: (alllistings2ItemModelObj.isSelected?.value ?? false)
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
            alllistings2ItemModelObj.isSelected!.value = value;
          },
        ),
      ),
    );
  }
}
