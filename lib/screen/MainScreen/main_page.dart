import 'package:flutter/material.dart';

import '../../component/widget/bottom_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // To remove the back arrow button
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20), // Adjust the padding as needed
          child: SizedBox(
            height: 200,
            width: 200,
            child: Image.asset(
              'assets/image/mainPage_umah.png',
              fit: BoxFit.contain, // Adjust the fit as needed
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10), // Adjust the padding as needed
            child: IconButton(
              icon: Stack(
                children: [
                  const Icon(Icons.shopping_cart, size: 30), // Your desired icon size
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red, // Change the color of the border as needed
                      ),
                      child: const Icon(Icons.notifications_none, size: 10, color: Colors.white), // Your notification icon
                    ),
                  ),
                ],
              ),
              onPressed: () {
                // Add onPressed callback functionality here
              },
            ),
          ),
        ],
      ),


    );
  }
}
