import '../../../domain/entity/order_entity.dart';

abstract class ShopRemoteDataSrc {
  ShopRemoteDataSrc(Object object);

  Future<void> updateOrder(OrderEntity orderEntity);
}
