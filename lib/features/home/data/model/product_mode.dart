class ProductModel {
  final String productName;

  final double productPrice;

  final String productQuantity;

  final String imgLink;

  // Product Moedl COnstructor

  ProductModel({
    required this.productName,
    required this.productPrice,
    required this.productQuantity,
    required this.imgLink,
  });

  factory ProductModel.fromMap(Map<String, dynamic> jsonResponse) {
    return ProductModel(
      productName: jsonResponse['productName'],
      productPrice: double.parse(jsonResponse['productPrice']),
      productQuantity: jsonResponse['productQuantity'],
      imgLink: jsonResponse['imgLink'],
    );
  }
}
