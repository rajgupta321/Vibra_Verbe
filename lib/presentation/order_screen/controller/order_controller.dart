import 'package:vibra_verve/core/app_export.dart';import 'package:vibra_verve/presentation/order_screen/models/order_model.dart';/// A controller class for the OrderScreen.
///
/// This class manages the state of the OrderScreen, including the
/// current orderModelObj
class OrderController extends GetxController {
 Rx<OrderModel> orderModelObj = OrderModel().obs;

 void search(String query) {
  // Implement search logic here
  print('Search query: $query');
  // Update your list based on the search query
 }

 void filter(String filterOption) {
  // Implement filter logic here
  print('Filter option selected: $filterOption');
  // Update your list based on the selected filter option
 }
 }
