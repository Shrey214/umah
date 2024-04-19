import 'package:get/get.dart';
import 'package:umah/model/user.dart';
import 'package:umah/services/user_repo.dart';

class LoginController extends GetxController{

  Rx<User?> loginUser = Rx<User?>(null);

  var isPasswordVisible = false.obs;
  var isSuccess = false.obs;
  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }


  Future<void> handleLoginData( email,  password) async {
    try {
      var user = UserRepo().findUserByEmailAndPassword(email, password);
      if (user != null) {
        loginUser.value = user;
        isSuccess.value = true;
      } else {
        isSuccess.value = false;
      }
    } catch (e) {
      print(e);
      isSuccess.value = false;
    }
  }
}

