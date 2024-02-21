import 'package:hive/hive.dart';

import '../../features/home/model/product_mode.dart';

class ConstantsHolder {
  List<ProductModel> fetchedData;

  String downloadDirectory;

  late Box userDetailsBox;

  ConstantsHolder({
    this.fetchedData = const [],
    this.downloadDirectory = "",
  });
}

ConstantsHolder constantsHolder = ConstantsHolder();
