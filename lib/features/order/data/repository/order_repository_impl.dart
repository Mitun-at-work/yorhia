import '../../domain/entity/order_entity.dart';
import '../../domain/repository/order_repository.dart';
import '../data_src/remote/remote_order_data_src.dart';

class OrderRepositoryImpl implements OrderRepository {
  // Dependencies
  final OrderRemoteDataSourceRepository orderRemoteDataSourceRepository;

  OrderRepositoryImpl(this.orderRemoteDataSourceRepository);

  @override
  Future<void> submitOrderRequest(OrderEntity orderEntity) async {
    await orderRemoteDataSourceRepository.updateOrder(orderEntity);
  }
}
