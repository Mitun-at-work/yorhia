import 'package:yoriha/features/shop/domain/entity/order_entity.dart';

abstract class OrderRepo {
  Future<List<OrderEntity>> fetchUserOrders();
}
