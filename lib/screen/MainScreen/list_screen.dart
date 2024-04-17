import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black.withOpacity(0.2),
                width: 1,
              ),

              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
              icon: Stack(
                children: [
                  const Icon(Icons.arrow_back, size: 30),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                      child: const Icon(Icons.notifications_none,
                          size: 10,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
              onPressed: () {
                       Get.back();
              },
            ),
          ),
          backgroundColor: const Color(0xFFF4F8FF),
        ),
      body: Column(
        children: [
          Flexible(
              child: Container(
                width: 400,
                height: 150,
                color: const Color(0xFFF4F8FF),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text(
                            "hello",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(width: 20.0),
                        Expanded(
                          child: Image.asset(
                            'assets/image/login-page-chair.png',
                            width: 318,
                            height: 318,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
          )
        ],
      ),
    );
  }
}
