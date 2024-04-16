import 'package:flutter/material.dart';
import '../component/home_component.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 0;

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

  final PageController homeController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: homeController,
        onPageChanged: (index) {
          setState(() {
            currentPage = index;
          });
        },
        pageSnapping: true,
        children: [
          HomeComponent(
            currentPage: currentPage,
            pageController: homeController,
          ),
          HomeComponent(
            currentPage: currentPage,
            pageController: homeController,
          ),
          HomeComponent(
            currentPage: currentPage,
            pageController: homeController,
          ),
        ],
      ),
    );
  }
}
