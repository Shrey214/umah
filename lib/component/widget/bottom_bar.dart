import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/navbar_controller.dart';


class BottomNavBar extends StatelessWidget {
   BottomNavBar({Key? key}) : super(key: key);
  final NavBarController navBarController = Get.put(NavBarController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navBarController.selectedIndex ,
        onTap: navBarController.onItemTapped() ,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

