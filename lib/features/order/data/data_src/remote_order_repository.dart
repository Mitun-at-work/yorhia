import 'package:yorhia/features/shop/data/model/order_model.dart';

abstract class OrderRemoteDataSrc {
  Future<List<OrderModel>> fetchUserOrders();
}
