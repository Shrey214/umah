import '../../model/product.dart';

List<Product> getProductData() {
  return [
    Product(
      productId: 1,
      categoryId: 2,
      productTitle: "Linnon",
      description: "Description for Chair Product 1",
      color: 'grey',
      price: 300,
      image: "assets/image/linnon.png",
    ),
    Product(
      productId: 2,
      categoryId: 2,
      productTitle: "Torald",
      color: 'white',
      price: 500,
      description: "Description for Chair Product 2",
      image: "assets/image/torald.png",
    ),

    Product(
      productId: 3,
      categoryId: 2,
      productTitle: "Meltorp",
      color: 'red',
      price: 100,
      description: "Description for Table Product 1",
      image: "assets/image/meltorp.png",
    ),

    Product(
      productId: 4,
      categoryId: 3,
      productTitle: "Langkapten",
      color: 'red',
      price: 250,
      description: "Description for Lamp Product 1",
      image: "assets/image/langkapten.jpg",
    ),
    Product(
      productId: 5,
      categoryId: 3,
      productTitle: "Langkapten",
      color: 'red',
      price: 250,
      description: "Description for Lamp Product 1",
      image: "assets/image/lamp_product1_image.jpg",
    ),
    Product(
      productId: 4,
      categoryId: 4,
      productTitle: "Meltorp",
      color: 'red',
      price: 250,
      description: "Description for Lamp Product 1",
      image: "assets/image/meltorp.jpg",
    ),
  ];
}
