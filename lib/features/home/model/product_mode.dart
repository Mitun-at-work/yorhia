class ProductModel {
  final String productName;

  final String productPrice;

  final String productQuantity;

  final String imgLink;

  // Product Moedl COnstructor

  ProductModel(
      {required this.productName,
      required this.productPrice,
      required this.productQuantity,
      required this.imgLink});

  factory ProductModel.fromJson(Map<String, dynamic> jsonResponse) {
    return ProductModel(
      productName: jsonResponse['productName'],
      productPrice: jsonResponse['productPrice'],
      productQuantity: jsonResponse['productQuantity'],
      imgLink: jsonResponse['imgLink'],
    );
  }
}