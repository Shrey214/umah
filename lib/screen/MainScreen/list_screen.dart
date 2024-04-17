import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../controller/product_controller.dart';
import '../../model/category.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProductController productController = Get.put(ProductController());
    Category? category = productController.category.value;

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
            icon: const Stack(
              children: [
                Icon(Icons.arrow_back, size: 30),
              ],
            ),
            onPressed: () {
              Get.back();
            },
          ),
        ),
        backgroundColor: const Color(0xFFF4F8FF),
      ),
        body: ListView(
        children: [
          Container(
            width: 400,
            height: 150,
            color: const Color(0xFFF4F8FF),
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        category!.categoryTitle.toString(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Image.asset(
                        category.image.toString(),
                        width: 318,
                        height: 318,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(20),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.75
              ),
              itemCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: 165,
                  height: 500,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          width: 165,
                          height: 400,
                          // padding: const EdgeInsets.only(top: 9.06),
                          child: Stack(
                            children: [
                              // SvgPicture.asset("assets/image/newImage.svg", fit: BoxFit.fitHeight),
                              Image.asset(
                                'assets/image/umah-logo.png',
                                width: 165,
                                height: 200,
                                fit: BoxFit.fitHeight,
                              ),
                              Positioned(
                                top: 0,
                                right: 0,
                                child: IconButton(
                                  icon: const Icon(Icons.favorite_border),
                                  onPressed: () {
                        
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      
                      Row(
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Product Name',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Price: \$100',
                              ),
                            ],
                          ),
                          IconButton(
                            icon: Icon(Icons.add_shopping_cart),
                            onPressed: () {

                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

        ],
      ),
    );
  }
}
