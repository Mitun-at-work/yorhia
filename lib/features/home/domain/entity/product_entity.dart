class ProductEntity {
  final String productName;

  final double productPrice;

  final String productQuantity;

  final String imgLink;

  // Product Moedl COnstructor

  ProductEntity({
    required this.productName,
    required this.productPrice,
    required this.productQuantity,
    required this.imgLink,
  });

  factory ProductEntity.fromMap(Map<String, dynamic> jsonResponse) {
    return ProductEntity(
      productName: jsonResponse['productName'],
      productPrice: double.parse(jsonResponse['productPrice']),
      productQuantity: jsonResponse['productQuantity'],
      imgLink: jsonResponse['imgLink'],
    );
  }
}
