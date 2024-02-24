import '../entity/order_entity.dart';

abstract class OrderRepository {
  Future<void> submitOrderRequest(OrderEntity orderEntity);
}
