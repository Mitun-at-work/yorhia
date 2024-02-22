import '../hive/hive.dart';

class Auth {
  // Utilising the Hive Class
  final HiveManger hive;

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
