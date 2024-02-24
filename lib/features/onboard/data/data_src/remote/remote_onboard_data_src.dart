import 'package:dartz/dartz.dart';

import '../../model/user_model.dart';

abstract class OnboardRemoteDataSource {
  // To authenticate Gmail
  Future<bool> authenticateUserMail();

  // To verify the user authenticity
  Future<Either<void, UserModel>> fetchUserFromCollection(String userId);
}
