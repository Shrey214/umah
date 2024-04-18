import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:umah/helper/imageStrings.dart';
import 'package:umah/helper/reusableStrings.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                controller: _controller,
                itemCount: 3,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (_, i) {
                  return Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      children: [
                        Image.asset(
                          ImageStrings.umahLogo,
                          height: 300,
                        ),
                        const SizedBox(
                          height: 220,
                        ),
                        Text(
                          OnBoardingData.dataList[i]['title'],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 19),
                        ),
                        Text(
                          OnBoardingData.dataList[i]['subtitle'],
                          textAlign: TextAlign.center,
                          style:
                          const TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    ),
                  );
                }),
          ),
          Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(OnBoardingData.dataList.length,
                        (index) => buildDash(index, context)),
              )),
          Container(
            height: 55,
            width: double.infinity,
            margin: const EdgeInsets.all(40),
            color: Colors.orange,
            child: TextButton(
              onPressed: () {
                if (currentIndex == OnBoardingData.dataList.length - 1) {
                  Get.toNamed("/login");
                }
                _controller.nextPage(
                    duration: const Duration(milliseconds: 100),
                    curve: Curves.bounceIn);
              },
              child: Text(
                currentIndex == OnBoardingData.dataList.length - 1
                    ? "Login"
                    : "Next",
                style: const TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildDash(int index, BuildContext context) {
    if (index == 0) {
      return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
              OnBoardingData.dataList.length,
                  (index) => Container(
                height: 6,
                width: 20,
                margin: const EdgeInsets.only(right: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color:
                  currentIndex == index ? Colors.orange : Colors.grey,
                ),
              )),
        ),
      );
    } else {
      return const SizedBox(
        height: 1,
      );
    }
  }
}