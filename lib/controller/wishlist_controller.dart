import 'package:get/get.dart';
import 'package:umah/model/wishlist.dart';
import 'package:umah/services/wishlist_repo.dart';
import '../helper/model_data/product_data.dart';
import '../model/product.dart';
import 'login_controller.dart';

class WishListController extends GetxController {
  var wishlists = <WishList>[].obs;
  var products = <Product>[].obs;
  final LoginController loginController = Get.put(LoginController());
  var isSaved = <bool>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadWishlistByUserId(loginController.loginUser.value?.userId);
    getAllProductInWishList(loginController.loginUser.value!.userId);
    isSaved.value = List<bool>.generate(
      products.length,
          (index) => false,
    );
  }

  void addWishList(WishList wishList,index) {
    try {
      WishListRepo().addToWishList(wishList);
      wishlists.add(wishList);
      getAllProductInWishList(wishList.userId);
      isSaved[index] = true;
    } catch (e) {
      print(e);
    }
  }

  loadAllWishList() {
    try {
      wishlists.value = WishListRepo().loadAllWishList();
      print(wishlists.value.length);
    }
    catch (e) {
      print(e);
    }
  }



  loadWishlistByUserId(userId) {
    try {
      loadAllWishList();
      List<WishList> list = wishlists.where((wishList) =>
      wishList.userId == userId).toList();
      wishlists.value = list;
    } catch (e) {
      print(e);
    }
  }

  void getAllProductInWishList(userId) {
    try {
      var productIds = wishlists.map((wishlist) => wishlist.productId).toSet();

      var userProducts = getProductData().where((product) =>
          productIds.contains(product.productId)).toList();

      products.value = userProducts;
    } catch (e) {
      print(e);
    }
  }

}
