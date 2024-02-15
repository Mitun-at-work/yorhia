import '../../domain/entity/product_entity.dart';

class ProductModel extends ProductEntity {
  //
  ProductModel(
      {required super.productName,
      required super.productImgLink,
      required super.productQuantity,
      required super.productPrice});

  factory ProductModel.frromJson(Map<String, dynamic> jsonResponse) {
    return ProductModel(
      productName: jsonResponse['productName'],
      productImgLink: jsonResponse['productImgLink'],
      productQuantity: jsonResponse['productQuantity'],
      productPrice: jsonResponse['productPrice'],
    );
  }
}
