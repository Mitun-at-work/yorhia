import '../entity/order_entity.dart';

abstract class ShopRepo {
  Future<void> submitOrderRequest(OrderEntity orderEntity);
}
