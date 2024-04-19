import 'package:hive/hive.dart';

import '../model/wishlist.dart';

class WishListRepo{

  var box = Hive.box("wishlist");

  void addToWishList(WishList wishList) {
    try{
      box.add(wishList);
    }
    catch(e){
      print(e);
    }
  }

  List<WishList> loadAllWishList(){
    try{
      List<WishList> list = box.values.cast<WishList>().toList();
      return list;

    }
    catch(e){
      print(e);
      return [];
    }
  }


}