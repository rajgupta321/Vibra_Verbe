import '../../widgets/custom_elevated_button.dart';
import '../splash_screen/widgets/productpromotionsection_item_widget.dart';
import 'controller/splash_controller.dart';
import 'models/productpromotionsection_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:vibra_verve/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key})
      : super(
    key: key,
  );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.onErrorContainer.withOpacity(1),
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup605,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: 390.h,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [SizedBox(height: 18.v),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 20.h, bottom: 20.v),
                    child: TextButton(
                      onPressed: () {
                        Get.toNamed('/login_screen');
                      },
                      child: Text(
                        "lbl_skip".tr,
                        style: CustomTextStyles.bodyMediumRobotoOnErrorContainer,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10.v),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 20.h,
                      right: 26.h,
                    ),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: 31.h,
                                right: 6.h,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_vibraverve".tr,
                                    style: TextStyle(
                                        color: Colors.white,fontSize:38,fontWeight: FontWeight.bold ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgVector,
                                    height: 47.v,
                                    width: 52.h,
                                    margin: EdgeInsets.only(
                                      left: 8.h,
                                      top: 4.v,
                                      bottom: 2.v,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 547.v,
                              width: 343.h,
                              margin: EdgeInsets.only(right: 1.h),
                              child: Stack(
                                alignment: Alignment.topLeft,
                                children: [
                                  CustomImageView(
                                    imagePath:
                                    ImageConstant.img5d02da5df552836,
                                    height: 148.adaptSize,
                                    width: 148.adaptSize,
                                    alignment: Alignment.topRight,
                                    margin: EdgeInsets.only(top: 79.v),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant
                                        .imgMacbookAirRetinaM1240x160,
                                    height: 158.v,
                                    width: 230.h,
                                    alignment: Alignment.topLeft,
                                    margin: EdgeInsets.only(
                                      left: 4.h,
                                      top: 118.v,
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgDCc1,
                                    height: 68.v,
                                    width: 182.h,
                                    alignment: Alignment.bottomLeft,
                                    margin: EdgeInsets.only(bottom: 172.v),
                                  ),
                                  _buildProductPromotionSection(),
                                ],
                              ),
                            ),
                            CustomElevatedButton( onPressed: (){
                              Get.toNamed('/login_screen');
                            }, height: 48.v,
                              text: "lbl_log_in2".tr,
                              buttonStyle: CustomButtonStyles.fillOnErrorContainer,
                              buttonTextStyle: CustomTextStyles.bodyMediumRobotoPrimary,)
                          ],
                        ),
                        SizedBox(height: 15.v),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            height: 6.v,
                            child: AnimatedSmoothIndicator(
                              activeIndex: 0,
                              count: 3,
                              effect: ScrollingDotsEffect(
                                spacing: 6,
                                activeDotColor: theme.colorScheme.onError,
                                dotColor: appTheme.blueGray10001,
                                dotHeight: 6.v,
                                dotWidth: 6.h,
                              ),
                            ),
                          ),
                        ),


                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProductPromotionSection() {
    return Obx(
          () => CarouselSlider.builder(
        options: CarouselOptions(
          height: 547.v,
          initialPage: 0,
          autoPlay: true,
          viewportFraction: 1.0,
          enableInfiniteScroll: false,
          scrollDirection: Axis.horizontal,
          onPageChanged: (
              index,
              reason,
              ) {
            controller.sliderIndex.value = index;
          },
        ),
        itemCount: controller
            .splashModelObj.value.productpromotionsectionItemList.value.length,
        itemBuilder: (context, index, realIndex) {
          ProductpromotionsectionItemModel model = controller.splashModelObj
              .value.productpromotionsectionItemList.value[index];
          return ProductpromotionsectionItemWidget(
            model,
          );
        },
      ),
    );
  }
}
