class UserModel {
  final String userName;
  final String userMailId;
  final String userContactNumber;
  final int rationNumber;
  final List<Map<String, dynamic>> userOrderHistory;

  // Initialiser
  UserModel(
      {required this.userName,
      required this.userMailId,
      required this.userContactNumber,
      required this.rationNumber,
      required this.userOrderHistory});
}
