import 'package:yoriha/features/order/data/data_src/remote_order_repository.dart';
import 'package:yoriha/features/order/domain/repo/order_repo.dart';
import 'package:yoriha/features/shop/data/model/order_model.dart';
import 'package:yoriha/features/shop/domain/entity/order_entity.dart';

class OrderRepoImpl implements OrderRepo {
  // Order Dependencies
  final OrderRemoteDataSrc orderRemoteDataSrc;

  // Init
  OrderRepoImpl(this.orderRemoteDataSrc);

  @override
  Future<List<OrderEntity>> fetchUserOrders() async {
    // Entites
    final List<OrderEntity> orderEntities = [];

    // Order Model
    final List<OrderModel> ordeModels =
        await orderRemoteDataSrc.fetchUserOrders();

    // Model Conversion
    for (OrderModel orderModel in ordeModels) {
      orderEntities.add(orderModel.convertModel(orderModel));
    }

    return orderEntities;
  }
}
