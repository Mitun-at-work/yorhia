import 'package:yoriha/features/shop/data/model/order_model.dart';

abstract class OrderRemoteDataSrc {
  Future<List<OrderModel>> fetchUserOrders();
}
