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
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 1),
          // Adjust the padding as needed
          child: Align(
            alignment: Alignment.centerLeft, // Align the title to the left
            child: Image.asset(
              'assets/image/mainPage_umah.png',
              width: 100,
              height: 22,
              fit: BoxFit.contain, // Adjust the fit as needed
            ),
          ),
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              // Adjust the padding as needed
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black.withOpacity(0.2), width: 1),
                  // Light thin black border
                  borderRadius: BorderRadius.circular(10), // Border radius
                ),
                child: IconButton(
                  icon: Stack(
                    children: [
                      const Icon(Icons.shopping_cart, size: 30),
                      // Your desired icon size
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.all(4),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors
                                .red, // Change the color of the border as needed
                          ),
                          child: const Icon(Icons.notifications_none,
                              size: 10,
                              color: Colors.white), // Your notification icon
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {
                    // Add onPressed callback functionality here
                  },
                ),
              )),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // Align children to the start (left) of the column
        children: [
          // First row
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: const Color.fromRGBO(4, 19, 48, 1),
                    height: 120,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/image/WalletIcon.png',color: Colors.deepOrangeAccent,),
                        const SizedBox(width: 10,),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Wallet",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),),
                            Text("\$2,700", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)

                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: const Color.fromRGBO(4, 19, 48, 1),
                    height: 120,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/image/ahievement-icon.png',color: Colors.deepOrangeAccent,),
                        const SizedBox(width: 10,),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Points",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),),
                            Text("4,500", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)

                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: const Color.fromRGBO(4, 19, 48, 1),
                    height: 120,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/image/discount-icon.png',color: Colors.deepOrangeAccent,),
                        const SizedBox(width: 10,),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Vouchers",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),),
                            Text("2", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)

                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Second row
          Container(
            color: Colors.red,
            height: 100,
            child: Center(
              child: Text('Row 2'),
            ),
          ),
          // Third row
          Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.yellow,
                  height: 100,
                  child: Center(
                    child: Text('Row 3 - Item 1'),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.orange,
                  height: 100,
                  child: Center(
                    child: Text('Row 3 - Item 2'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
<<<<<<< HEAD
=======


>>>>>>> b8b33e4b5b7ea74463dd0a198dba39e18b3e13d8
    );
  }
}
