import '../../../../config/auth/auth.dart';
import '../../../../config/firebase/firebase_manager.dart';
import '../../../../config/hive/hive_manager.dart';
import '../../domain/repository/onboard_repository.dart';

class OnboardRepositoryImpl implements OnboardRepository {
  // Initialisation
  final FirebaseManager fireBaseManager;
  final HiveManager hiveManger;
  final Auth authManager;

  // Initialiser
  OnboardRepositoryImpl(
      this.authManager, this.fireBaseManager, this.hiveManger);

  @override
  Future<bool> authenticateUser() async {
    //
    final Map<String, dynamic> userProfileMap =
        await fireBaseManager.authenticateGmail();

    final fetchedData = await fireBaseManager.fetchDocumentIdFromCollection(
        userProfileMap['user_mail'], 'user');

    if (fetchedData != null) {
      hiveManger.writeToBox({});
      return true;
    }

    return false;
  }

  @override
  Future<bool> isAuthenticated() async {
    return await authManager.verifyUser();
  }
}
