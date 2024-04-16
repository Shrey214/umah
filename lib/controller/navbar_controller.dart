import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class NavBarController extends GetxController {
  var selectedIndex = 0.obs;

  void onItemTapped(int index) {
    selectedIndex.value = index;

    switch (selectedIndex.value) {
      case 0:
        print('Tapped on Home');
        break;
      case 1:
        print('Tapped on Search');
        break;
      case 2:
        print('Tapped on Profile');
        break;
      case 3:
        print('Tapped on Profile');
        break;
    }
  }
}
