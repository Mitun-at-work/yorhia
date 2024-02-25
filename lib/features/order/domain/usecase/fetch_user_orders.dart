import 'dart:async';

import 'package:yoriha/core/usecase/use_case.dart';
import 'package:yoriha/features/order/domain/repo/order_repo.dart';
import 'package:yoriha/features/shop/domain/entity/order_entity.dart';

class FetchUserOrders extends UseCase<void, List<OrderEntity>> {
  final OrderRepo orderRepo;

  FetchUserOrders(this.orderRepo);

  @override
  Future<void> call({List<OrderEntity>? params}) {
    return orderRepo.fetchUserOrders();
  }
}
