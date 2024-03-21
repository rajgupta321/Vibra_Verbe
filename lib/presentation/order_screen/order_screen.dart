import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../order_screen/widgets/orderdetailslist_item_widget.dart';
import 'controller/order_controller.dart';
import 'models/orderdetailslist_item_model.dart';
import 'package:vibra_verve/core/app_export.dart';

class OrderScreen extends GetWidget<OrderController> {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildArrowLeftRow(),
              Divider(),
              SizedBox(height: 15.v),
              _buildSearchBar(),
              _buildOrderDetailsList(
                    () {
                  Get.toNamed('/order_details_screen');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildArrowLeftRow() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 26.v),
      decoration: AppDecoration.fillOnErrorContainer,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgArrowLeftBlueGray300,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(bottom: 2.v),
            onTap: onTapImgArrowLeft,
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Text("My Orders".tr, style: theme.textTheme.titleMedium),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 10.v),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              onChanged: (value) {
                // Implement search logic here
                controller.search(value);
              },
              decoration: InputDecoration(
                hintText: 'Search...',
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          PopupMenuButton<String>(
            onSelected: (String value) {
              // Implement filter logic based on the selected value
              controller.filter(value);
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[

              PopupMenuItem<String>(
                value: 'filterOption1',
                child: Text('On the way'),
              ),
              PopupMenuItem<String>(
                value: 'filterOption2',
                child: Text('Delivered'),
              ),
              PopupMenuItem<String>(
                value: "filterOption3",
                child: Text('Cancelled'),
              ),PopupMenuItem<String>(
                value: "filterOption3",
                child: Text('Returned'),
              )

              // Add more filter options as needed
            ],
            icon: Icon(Icons.filter_list),
          ),
        ],
      ),
    );
  }

  Widget _buildOrderDetailsList(VoidCallback? onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Obx(
              () => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 11.5.v),
                child: SizedBox(
                  width: 312.h,
                  child: Divider(
                    height: 1.v,
                    thickness: 1.v,
                    color: appTheme.blue50,
                  ),
                ),
              );
            },
            itemCount: controller
                .orderModelObj.value.orderdetailslistItemList.value.length,
            itemBuilder: (context, index) {
              OrderdetailslistItemModel model = controller
                  .orderModelObj.value.orderdetailslistItemList.value[index];
              return OrderdetailslistItemWidget(model);
            },
          ),
        ),
      ),
    );
  }

  onTapImgArrowLeft() {
    Get.back();
  }
}
