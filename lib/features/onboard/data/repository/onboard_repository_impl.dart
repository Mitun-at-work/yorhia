import '../../../../config/auth/auth.dart';
import '../../../../config/firebase/firebase.dart';
import '../../../../config/hive/hive.dart';
import '../../domain/repository/onboard_repository.dart';

class OnboardRepositoryImpl implements OnboardRepository {
  // Initialisation
  final FirebaseManager fireBaseManager;
  final HiveManger hiveManger;
  final Auth authManager;

  // Initialiser
  OnboardRepositoryImpl(
      this.authManager, this.fireBaseManager, this.hiveManger);

  @override
  Future<bool> authenticateUser() async {
    //

    final Map<String, dynamic> userProfileMap =
        await fireBaseManager.authenticateGmail();

    final fetchedData = await fireBaseManager.fetchDocumentIDFromCollection(
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
