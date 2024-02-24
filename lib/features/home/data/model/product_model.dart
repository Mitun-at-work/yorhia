class ProductModel {
  final String productName;
  final double productPrice;
  final int productQuantity;
  final String imgLink;

  // Product Moedl Constructor
  ProductModel({
    required this.productName,
    required this.productPrice,
    required this.productQuantity,
    required this.imgLink,
  });

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
      productPrice: price.toDouble(),
      productQuantity: jsonResponse['productQuantity'],
      imgLink: jsonResponse['imageLink'],
    );
  }
}
