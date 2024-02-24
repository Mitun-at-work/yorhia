import '../../../domain/entity/order_entity.dart';

abstract class OrderRemoteDataSource {
  Future<void> updateOrderDetails(OrderEntity orderModel);
}
