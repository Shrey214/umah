import '../helper/model_data/product_data.dart';
import '../model/product.dart';

class ProductRepo {
  List<Product> getByCategoryId(int categoryId) {
    try {
      List<Product> products = getProductData()
          .where((product) => product.categoryId == categoryId)
          .toList();
      return products;
    } catch (e) {
      print(e);
      return [];
    }
  }
}
