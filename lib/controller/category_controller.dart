import 'package:get/get.dart';

import '../helper/model_data/category_data.dart';
import '../model/category.dart';

class CategoryController extends GetxController {
  var categories = <Category>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadCategory();
  }

  void loadCategory() {
    try {
      List<Category> lists = getCategoryData();
      categories.value = lists;
    } catch (e) {
      printInfo(info: e.toString());
    }
  }
}