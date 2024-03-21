import 'package:vibra_verve/core/app_export.dart';

class ApiClient extends GetConnect {

}


// import 'package:vibra_verve/core/app_export.dart';
// import 'package:http/http.dart' as http;
//
// import '../../presentation/home_page/models/productcomponent_item_model.dart';
//
// class ApiClient extends GetConnect {
//   Future<List<ProductcomponentItemModel>> fetchProductcomponentData() async {
//     try {
//       var response = await http.get(Uri.parse("https://dummyjson.com/products"));
//
//       if (response.statusCode == 200) {
//         // Parse the response body into a single ProductcomponentItemModel
//         final productModel = productcomponentItemModelFromJson(response.body);
//         // Wrap the single model in a list and return it
//         return [productModel];
//       } else {
//         throw Exception("Failed to load data: ${response.statusCode}");
//       }
//     } catch (e) {
//       throw Exception("Failed to connect to the server: $e");
//     }
//   }
// }



///For APIs
///For example ProductcomponentItemModel
// import 'package:get/get_connect.dart';
// import 'package:get/get_rx/src/rx_types/rx_types.dart';
// import '../../presentation/home_page/models/productcomponent_item_model.dart';
//
// class ApiClient extends GetConnect {
//   Future<List<ProductcomponentItemModel>> fetchProducts() async {
//     try {
//       final response = await get('https://dummyjson.com/products');
//       if (response.status.hasError) {
//         throw Exception('Failed to load products');
//       }
//       final List<dynamic> productsData = response.body['products'];
//
//       // Parse the response into a list of ProductcomponentItemModel
//       final List<ProductcomponentItemModel> products = productsData.map((productData) {
//         return ProductcomponentItemModel(
//           id: productData['id'],
//           title: productData['title'],
//           description: productData['description'],
//           price: productData['price'],
//           discountPercentage: productData['discountPercentage'],
//           rating: productData['rating'],
//           stock: productData['stock'],
//           brand: productData['brand'],
//           category: productData['category'],
//           thumbnail: productData['thumbnail'],
//           images: RxList<String>.of(List<String>.from(productData['images'])), // Convert List<String> to RxList<String>
//         );
//       }).toList();
//
//       return products;
//     } catch (e) {
//       // Handle errors
//       print('Error fetching products: $e');
//       return [];
//     }
//   }
// }
//
