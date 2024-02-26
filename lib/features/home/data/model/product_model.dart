class ProductModel {
  final String productName;
  final double productPrice;
  final String imgLink;

  // Product Moedl Constructor
  ProductModel({
    required this.productName,
    required this.productPrice,
    required this.imgLink,
  });

  // ignore: empty_constructor_bodies
  factory ProductModel.fromMap(Map<String, dynamic> jsonResponse) {
    //
    late double price;

    // Edge Cases of product price not being a double

    if (jsonResponse['productPrice'].runtimeType == int) {
      // Converting to double
      int jsonPrice = jsonResponse['productPrice'];
      price = jsonPrice.toDouble();
    } else {
      price = jsonResponse['productPrice'];
    }

    return ProductModel(
      productName: jsonResponse['productName'],
      productPrice: price,
      imgLink: jsonResponse['imageLink'],
    );
  }
}
