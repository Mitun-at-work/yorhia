abstract class OnboardRemoteDataSource {
  Future<void> authenticateUserMail();

  Future<void> fetchUserFromCollection(String userId);
}
