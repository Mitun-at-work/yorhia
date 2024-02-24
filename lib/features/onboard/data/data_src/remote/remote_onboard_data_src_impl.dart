import 'dart:developer';

import 'package:dartz/dartz.dart';

import '../../../../../config/firebase/firebase_manager.dart';
import '../../../../../config/hive/hive_manager.dart';
import '../../../../../config/storage/storage.dart';
import '../../model/user_model.dart';
import 'remote_onboard_data_src.dart';

class OnboardRemoteDataSourceImpl implements OnboardRemoteDataSource {
  final FirebaseManager firebaseManager;
  final HiveManager hiveManager;
  final RunTimeStorageManager runTimeStorageManager;

  OnboardRemoteDataSourceImpl(
      this.firebaseManager, this.hiveManager, this.runTimeStorageManager);

  @override
  Future<Either<void, UserModel>> fetchUserFromCollection(String userId) async {
    late Map<String, dynamic> userData;

    // Fetch the gmail Id in the user collection
    final Either<Map<String, dynamic>, void> result =
        await firebaseManager.fetchDocumentIdFromCollection(userId, 'users');

    result.fold(
      (left) => userData = left,
      (right) => null,
    );

    if (result.isLeft()) {
      return Right(UserModel.fromMap(userData));
    }
    return left(null);
  }

  @override
  Future<bool> authenticateUserMail() async {
    //
    late UserModel cacheData;

    final Map<String, String> userData =
        await firebaseManager.authenticateGmail();

    final result = await fetchUserFromCollection(userData['user_mail']!);

    log(result.toString());

    result.fold(
      (left) => null,
      (right) => cacheData = right,
    );

    if (result.isRight()) {
      // Storing the data in runtime
      await runTimeStorageManager.cacheDataRuntime(
          'user_profile', cacheData.toMap());
      return true;
    }
    return false;
  }
}
