import '../../data/model/product_model.dart';

class ProductEntity {
  final String productName;
  final double productPrice;
  final int productQuantity;
  final String imgLink;

  ProductEntity({
    required this.productName,
    required this.productPrice,
    required this.productQuantity,
    required this.imgLink,
  });

  factory ProductEntity.fromProductModel(ProductModel productModel) {
    return ProductEntity(
      productName: productModel.productName,
      productPrice: productModel.productPrice,
      productQuantity: productModel.productQuantity,
      imgLink: productModel.imgLink,
    );
  }
}
