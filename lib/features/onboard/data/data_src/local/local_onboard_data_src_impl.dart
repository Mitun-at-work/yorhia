import '../../../../../config/auth/auth.dart';
import '../../../../../config/firebase/firebase_manager.dart';
import '../../../../../config/hive/hive_manager.dart';
import 'local_onboard_data_src.dart';

class OnboardLocalDataSourceImpl implements OnboardLocalDataSource {
  final FirebaseManager fireBaseManager;
  final HiveManager hiveManger;
  final Auth authManager;

  OnboardLocalDataSourceImpl(
    this.fireBaseManager,
    this.hiveManger,
    this.authManager,
  );

  @override
  Future<bool> isUserAuthenticated() async {
    return await authManager.verifyUser();
  }

  @override
  Future<void> storeUserCredentials(Map<String, dynamic> jsonMap) async {
    await hiveManger.writeToBox(jsonMap);
  }
}
