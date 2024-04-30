import 'package:yorhia/features/shop/domain/entity/order_entity.dart';

abstract class OrderRepo {
  Future<List<OrderEntity>> fetchUserOrders();
}
