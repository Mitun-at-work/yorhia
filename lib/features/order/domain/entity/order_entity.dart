// ignore_for_file: public_member_api_docs, sort_constructors_first

class OrderEntity {
  final String orderId;
  final String orderDate;
  final String orderTime;
  final String orderValue;
  final Map<String, dynamic> orderProducts;
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
}
