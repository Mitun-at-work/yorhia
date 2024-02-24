import '../hive/hive_manager.dart';

class Auth {
  // Utilising the Hive Class
  final HiveManager hive;

  // Auth Class Initialiser
  Auth(this.hive);

  Future<bool> verifyUser() async {
    await hive.initializeBox();
    final userData = await hive.readFromBox();
    if (userData != null) {
      return true;
    }
    return false;
  }
}
