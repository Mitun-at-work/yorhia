// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserEntity {
  final String userName;
  final String userMailId;
  final String userContactNumber;
  final int rationNumber;
  final List<Map<String, dynamic>> userOrderHistory;

  // User Entity Initialiser
  UserEntity({
    required this.userName,
    required this.userMailId,
    required this.userContactNumber,
    required this.rationNumber,
    required this.userOrderHistory,
  });
}
