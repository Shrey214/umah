import 'package:get/get.dart';
import 'package:umah/controller/product_controller.dart';
import 'package:umah/model/category.dart';

class NavBarController extends GetxController {
  var selectedIndex = 0.obs;
  ProductController productController = Get.put(ProductController());
  void onItemTapped(int index) {
    selectedIndex.value = index;
    switch (selectedIndex.value) {
      case 0:
        Get.toNamed('/mainPage');
        break;
      case 1:
        Get.toNamed('/discover');
        break;
      case 2:
        productController.category.value = Category(
          categoryId: 0,
          categoryTitle: "ALL",
          description: "kkkfmfek",
          image: "assets/category/cabinet.png",
        );
        productController.loadProduct();
        Get.toNamed('/list');

        break;
      case 3:
        break;
    }
  }
}
