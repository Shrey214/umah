import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/product_controller.dart';
import '../../model/category.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProductController productController = Get.put(ProductController());

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
      body: Obx(() {
        final Category? category = productController.category.value;
        return ListView(
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
                          category?.categoryTitle.toString() ?? '',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Image.asset(
                          category?.image.toString() ?? '',
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
            if (productController.products.isNotEmpty)
              Padding(
                padding: const EdgeInsets.all(20),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.65,
                  ),
                  itemCount: productController.products.length,
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
                            child: SizedBox(
                              width: 165,
                              height: 400,
                              child: Stack(
                                children: [
                                  Image.asset(
                                    productController.products[index].image.toString(),
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
                                        // Handle favorite button tap
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              SizedBox(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text(
                                        productController.products[index].productTitle.toString(),
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text(
                                        "\$${productController.products[index].price.toString()}",
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 35),
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.deepOrangeAccent,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: IconButton(
                                  icon: const Icon(Icons.add),
                                  color: Colors.white,
                                  onPressed: () {
                                    // Handle add button tap
                                  },
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            else
              const Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 250),
                    Text(
                      "Sorry Not Available Product",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        );
      }),
    );
  }
}
