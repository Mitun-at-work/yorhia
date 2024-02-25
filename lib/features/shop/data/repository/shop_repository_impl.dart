import '../../domain/entity/order_entity.dart';
import '../../domain/repository/shop_repository.dart';
import '../data_src/remote/remote_shop_data_src.dart';

class ShopRepoImpl implements ShopRepo {
  // Dependencies
  final ShopRemoteDataSrc orderRemoteDataSourceRepository;

  ShopRepoImpl(this.orderRemoteDataSourceRepository);

  @override
  Future<void> submitOrderRequest(OrderEntity orderEntity) async {
    await orderRemoteDataSourceRepository.updateOrder(orderEntity);
  }
}
