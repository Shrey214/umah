import 'package:get/get.dart';

class NavBarController extends GetxController {
  var selectedIndex = 0.obs;

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

        break;
      case 3:

        break;
    }
  }
}
