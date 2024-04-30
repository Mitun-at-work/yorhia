import 'dart:async';

import 'package:yorhia/core/usecase/use_case.dart';
import 'package:yorhia/features/order/domain/repo/order_repo.dart';
import 'package:yorhia/features/shop/domain/entity/order_entity.dart';

class FetchUserOrders extends UseCase<void, List<OrderEntity>> {
  final OrderRepo orderRepo;

  FetchUserOrders(this.orderRepo);

  @override
  Future<void> call({List<OrderEntity>? params}) {
    return orderRepo.fetchUserOrders();
  }
}
