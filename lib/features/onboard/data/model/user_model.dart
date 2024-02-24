class UserModel {
  final String userName;
  final String userGmail;
  final String userContactNumber;
  final String userResidentAddress;
  final String userRationNumber;
  final int userRationIdxNumber;

  UserModel({
    required this.userName,
    required this.userGmail,
    required this.userContactNumber,
    required this.userResidentAddress,
    required this.userRationNumber,
    required this.userRationIdxNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userName': userName,
      'userGmail': userGmail,
      'userContactNumber': userContactNumber,
      'userResidentAddress': userResidentAddress,
      'userRationNumber': userRationNumber,
      'userRationIdxNumber': userRationIdxNumber,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      userName: map['userName'] as String,
      userGmail: map['userGmail'] as String,
      userContactNumber: map['userContactNumber'] as String,
      userResidentAddress: map['userResidentAddress'] as String,
      userRationNumber: map['userRationNumber'] as String,
      userRationIdxNumber: map['userRationIdxNumber'] as int,
    );
  }
}
