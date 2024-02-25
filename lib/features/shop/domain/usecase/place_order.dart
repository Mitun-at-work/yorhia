import '../../../../core/usecase/use_case.dart';
import '../entity/order_entity.dart';
import '../repository/shop_repository.dart';

class PlaceOrderUseCase implements UseCase<void, OrderEntity> {
  //
  final ShopRepo orderRepository;

  //
  PlaceOrderUseCase(this.orderRepository);

  @override
  Future<void> call({OrderEntity? params}) {
    return orderRepository.submitOrderRequest(params!);
  }
}
