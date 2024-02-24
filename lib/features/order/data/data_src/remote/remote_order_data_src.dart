import '../../../domain/entity/order_entity.dart';

abstract class OrderRemoteDataSourceRepository {
  Future<void> updateOrder(OrderEntity orderEntity);
}
