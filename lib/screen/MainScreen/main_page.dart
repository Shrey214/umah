import 'package:flutter/material.dart';
import 'package:umah/component/widget/main_page_component/app_bar.dart';

import '../../component/widget/main_page_component/bottom_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopAppBar(),



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
                        Image.asset(
                          'assets/image/WalletIcon.png',
                          color: Colors.deepOrangeAccent,
                        ),
                        const SizedBox(width: 10),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Wallet",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "\$2,700",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            )
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
                        Image.asset(
                          'assets/image/ahievement-icon.png',
                          color: Colors.deepOrangeAccent,
                        ),
                        const SizedBox(width: 10),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Points",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "4,500",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            )
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
                        Image.asset(
                          'assets/image/discount-icon.png',
                          color: Colors.deepOrangeAccent,
                        ),
                        const SizedBox(width: 10),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Vouchers",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "2",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            )
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
            child: const Center(
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
                  child: const Center(
                    child: Text('Row 3 - Item 1'),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.orange,
                  height: 100,
                  child: const Center(
                    child: Text('Row 3 - Item 2'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),





      bottomNavigationBar: BottomNavBar(),
    );
  }
}
