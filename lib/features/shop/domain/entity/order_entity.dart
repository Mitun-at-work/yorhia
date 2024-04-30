import 'package:yorhia/features/shop/data/model/order_model.dart';

class OrderEntity {
  final String orderId;
  final String orderDate;
  final String orderTime;
  final double orderValue;
  final List<Map<String, int>> orderProducts;
  final String orderPaymentId;

  OrderEntity({
    required this.orderId,
    required this.orderDate,
    required this.orderTime,
    required this.orderValue,
    required this.orderProducts,
    required this.orderPaymentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'orderId': orderId,
      'orderDate': orderDate,
      'orderTime': orderTime,
      'orderValue': orderValue,
      'orderProducts': orderProducts,
      'orderPaymentId': orderPaymentId,
    };
  }

  //
}
