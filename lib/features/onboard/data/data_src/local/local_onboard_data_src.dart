abstract class OnboardLocalDataSource {
  Future<bool> isUserAuthenticated();

  Future<void> storeUserCredentials(Map<String, dynamic> jsonMap);
}
