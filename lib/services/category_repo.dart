import 'package:flutter/foundation.dart';

import '../helper/model_data/category_data.dart';

class CategoryRepo{

  Category? getCategoryById(int categoryId) {
    try {

      Category category = getCategoryData().firstWhere((category) => category.categoryId == categoryId) as Category;
      return category;
    } catch (e) {
      print(e);
      return null;
    }
  }
}