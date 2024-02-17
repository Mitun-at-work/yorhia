import 'package:yoriha/features/home/model/product_mode.dart';

class ConstantsHolder {
  List<ProductModel> fetchedData;

  ConstantsHolder({
    this.fetchedData = const [],
  });
}

ConstantsHolder constantsHolder = ConstantsHolder();
