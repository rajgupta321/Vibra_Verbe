import 'productpromotionsection_item_model.dart';
import '../../../core/app_export.dart';
/// This class defines the variables used in the [splash_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SplashModel {
  Rx<List<ProductpromotionsectionItemModel>>
  productpromotionsectionItemList =
  Rx(List.generate(1,(index) => ProductpromotionsectionItemModel()));

}
