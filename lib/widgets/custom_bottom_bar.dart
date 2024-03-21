import 'package:flutter/material.dart';
import 'package:vibra_verve/core/app_export.dart';

import '../presentation/account_page/account_page.dart';
import '../presentation/cart_one_page/cart_one_page.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({
    Key? key,
    this.onChanged,
  }) : super(
          key: key,
        );

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavHome,
      activeIcon: ImageConstant.imgNavHome,
      title: "lbl_home".tr,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavExplore,
      activeIcon: ImageConstant.imgNavExplore,
      title: "lbl_search".tr,
      type: BottomBarEnum.Search,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavCart,
      activeIcon: ImageConstant.imgNavCart,
      title: "lbl_cart".tr,
      type: BottomBarEnum.Cart,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavOffer,
      activeIcon: ImageConstant.imgNavOffer,
      title: "lbl_offer".tr,
      type: BottomBarEnum.Offer,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavAccount,
      activeIcon: ImageConstant.imgNavAccount,
      title: "lbl_account2".tr,
      type: BottomBarEnum.Account2,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 374.h,
          child: Divider(),
        ),
        Container(
          height: 93.v,
          decoration: BoxDecoration(
            color: theme.colorScheme.onErrorContainer.withOpacity(1),
          ),
          child: Obx(
            () => BottomNavigationBar(
              backgroundColor: Colors.transparent,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedFontSize: 0,
              elevation: 0,
              currentIndex: selectedIndex.value,
              type: BottomNavigationBarType.fixed,
              items: List.generate(bottomMenuList.length, (index) {
                return BottomNavigationBarItem(
                  icon: Container(
                    decoration: AppDecoration.fillOnErrorContainer,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomImageView(
                          imagePath: bottomMenuList[index].icon,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          color: appTheme.blueGray300,
                          margin: EdgeInsets.only(top: 16.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 3.v),
                          child: Text(
                            bottomMenuList[index].title ?? "",
                            style: CustomTextStyles.bodySmall10.copyWith(
                              color: appTheme.blueGray300,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  activeIcon: SizedBox(
                    height: 59.v,
                    width: 75.h,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            decoration: AppDecoration.fillOnErrorContainer,
                            child: CustomImageView(
                              imagePath: bottomMenuList[index].activeIcon,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              color: theme.colorScheme.primary,
                              margin:
                                  EdgeInsets.fromLTRB(26.h, 16.v, 25.h, 19.v),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 21.h,
                              top: 44.v,
                              right: 21.h,
                            ),
                            child: Text(
                              bottomMenuList[index].title ?? "",
                              style:
                                  CustomTextStyles.labelMediumPrimary.copyWith(
                                color: theme.colorScheme.primary,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  label: '',
                );
              }),
              onTap: (index) {
                selectedIndex.value = index;
                onChanged?.call(bottomMenuList[index].type);
                switch (bottomMenuList[index].type) {
                  case BottomBarEnum.Home:
                    Get.toNamed('/home_page');
                    break;
                  case BottomBarEnum.Search:
                    Get.toNamed('/search_screen');
                    break;
                  case BottomBarEnum.Cart:
                    Get.to(CartOnePage());
                    break;
                  case BottomBarEnum.Offer:
                    Get.toNamed('/notification_offer_screen');
                    break;
                  case BottomBarEnum.Account2:
                    Get.to(AccountPage());
                    break;
                  default:
                    break;
                }
              },
            ),
          ),
        ),
      ],
    );
  }
}

enum BottomBarEnum {
  Home,
  Search,
  Cart,
  Offer,
  Account2,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
