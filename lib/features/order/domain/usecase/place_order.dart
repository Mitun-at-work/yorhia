import '../../../../core/usecase/use_case.dart';
import '../entity/order_entity.dart';
import '../repository/order_repository.dart';

class PlaceOrderUseCase implements UseCase<void, OrderEntity> {
  //
  final OrderRepository orderRepository;

  //
  PlaceOrderUseCase(this.orderRepository);

  @override
  Future<void> call({OrderEntity? params}) {
    return orderRepository.submitOrderRequest(params!);
  }
}
