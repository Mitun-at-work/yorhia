import 'package:yoriha/config/firebase/firebase_manager.dart';
import 'package:yoriha/config/hive/hive_manager.dart';
import 'package:yoriha/features/onboard/data/data_src/remote/remote_onboard_data_src.dart';

class OnboardRemoteDataSourceImpl implements OnboardRemoteDataSource {
  final FirebaseManager firebaseManager;
  final HiveManager hiveManager;

  OnboardRemoteDataSourceImpl(this.firebaseManager, this.hiveManager);

  @override
  Future<void> authenticateUserMail() async {
    final Map<String, dynamic> userData =
        await firebaseManager.authenticateGmail();

    // final
  }

  @override
  Future<void> fetchUserFromCollection(String userId) {
    // TODO: implement fetchUserFromCollection
    throw UnimplementedError();
  }
}
