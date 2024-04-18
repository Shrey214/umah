
import '../helper/model_data/category_data.dart';
import '../model/category.dart';

class CategoryRepo{

  Category? getCategoryById(int categoryId) {
    try {

      Category category = getCategoryData().firstWhere((category) => category.categoryId == categoryId);
      return category;
    } catch (e) {
      print(e);
      return null;
    }
  }
}