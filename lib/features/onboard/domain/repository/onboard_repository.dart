abstract class OnboardRepository {
  Future<bool> isAuthenticated();

  Future<bool> authenticateUser();
}
