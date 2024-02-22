import '../../features/home/model/product_mode.dart';

class FreeBiesEntity {
  final int upperBoundNumber;
  final int lowerBoundNumber;
  final List<ProductModel> productList;
  FreeBiesEntity({
    required this.upperBoundNumber,
    required this.lowerBoundNumber,
    required this.productList,
  });
}
