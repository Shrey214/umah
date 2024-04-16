import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../helper/reusableStrings.dart';

class HomeComponent extends StatelessWidget {
   int currentPage;
   final PageController pageController;
   HomeComponent({super.key, required this.currentPage, required this.pageController});

   Widget rowProgress() {
     return Row(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         currentPage == 0
             ? const Icon(
           Icons.horizontal_rule_rounded,
           size: 40,
           color: Colors.orange,
         )
             : const Icon(
           Icons.horizontal_rule_rounded,
           size: 40, // Set the size to 20 for all icons
           color: Colors.white38,
         ),
         currentPage == 1
             ? const Icon(
           Icons.horizontal_rule_rounded,
           size: 40,
           color: Colors.orange,
         )
             : const Icon(
           Icons.horizontal_rule_rounded,
           size: 40, // Set the size to 20 for all icons
           color: Colors.white38,
         ),
         currentPage == 2
             ? const Icon(
           Icons.horizontal_rule_rounded,
           size: 40,
           color: Colors.orange,
         )
             : const Icon(
           Icons.horizontal_rule_rounded,
           size: 40, // Set the size to 20 for all icons
           color: Colors.white38,
         ),
       ],

     );
   }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> homeData = getHomeData();
    Map<String, dynamic> page = homeData[currentPage];
    return   Container(
      constraints: const BoxConstraints.expand(),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(page['background_img']),
          fit: BoxFit.cover, // Adjust this based on your requirement
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Image(image: AssetImage("assets/image/umah-logo.png")),
          const SizedBox(height: 220),
           Center(
            child: Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(page["title"], style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 22.0,
              ),),
            ),
          ),
           Padding(padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Text(
              page["subtitle"],
              style: const TextStyle(
                color: Color.fromRGBO(255, 255, 255, 0.9),
                fontSize: 12.0,
              ), textAlign: TextAlign.center,),
          ),
          rowProgress(),

          Center(
            child: TextButton(
              onPressed: () {
                if(page["button_title"] == "Next")
                  {
                    if (currentPage < 2) {
                      pageController.nextPage(
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.ease,
                      );
                    }
                  }
                else{

                   Get.toNamed("/login");
                }
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.orange),
                foregroundColor: MaterialStateProperty.all<Color>(
                    Colors.white),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        10), // Set the border radius to 10
                  ),
                ),
              ),
              child:  Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 150, vertical: 14),
                child: Text(page["button_title"]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
