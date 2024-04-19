import '../helper/model_data/user_data.dart';
import '../model/user.dart';

class UserRepo{
  User? findUserByEmailAndPassword(String email, String password) {
    List<User> userList = getUserData();
    for (User user in userList) {
      if (user.emailId == email && user.password == password) {
        return user;
      }
    }
    return null;
  }
}