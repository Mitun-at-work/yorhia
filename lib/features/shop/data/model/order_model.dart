import 'package:yorhia/features/shop/domain/entity/order_entity.dart';

class OrderModel {
  final String orderId;
  final String orderDate;
  final String orderTime;
  final double orderValue;
  final List<Map<String, int>> orderProducts;
  final String orderPaymentId;
  final String orderPaymentSignature;

  OrderModel(
      {required this.orderId,
      required this.orderDate,
      required this.orderTime,
      required this.orderValue,
      required this.orderProducts,
      required this.orderPaymentId,
      required this.orderPaymentSignature});

  OrderEntity convertModel(OrderModel orderModel) {
    return OrderEntity(
      orderId: orderModel.orderId,
      orderDate: orderModel.orderDate,
      orderTime: orderModel.orderTime,
      orderPaymentId: orderModel.orderPaymentId,
      orderProducts: orderModel.orderProducts,
      orderValue: orderModel.orderValue,
    );
  }
}
