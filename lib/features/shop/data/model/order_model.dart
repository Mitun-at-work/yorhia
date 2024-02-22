class OrderModel {
  final String orderId;
  final String orderDate;
  final String orderTime;
  final String orderValue;
  final Map<String, dynamic> orderProducts;
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
}
