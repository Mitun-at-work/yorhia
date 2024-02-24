import '../../domain/repository/onboard_repository.dart';
import '../data_src/local/local_onboard_data_src.dart';
import '../data_src/remote/remote_onboard_data_src.dart';

class OnboardRepositoryImpl implements OnboardRepository {
  // Initialisation

  final OnboardLocalDataSource onboardLocalDataSource;

  final OnboardRemoteDataSource onboardRemoteDataSource;

  OnboardRepositoryImpl(
      this.onboardLocalDataSource, this.onboardRemoteDataSource);

  @override
  Future<bool> authenticateUser() async {
    return await onboardRemoteDataSource.authenticateUserMail();
  }

  @override
  Future<bool> isAuthenticated() async {
    return await onboardLocalDataSource.isUserAuthenticated();
  }
}
