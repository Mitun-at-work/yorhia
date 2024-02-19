import 'dart:developer';

import 'package:hive/hive.dart';

import '../../core/constants/constants.dart';

class AuthenticationManager {
  // To verify wether a user is already logged in
  Future<bool> isUserAuthenticated() async {
    Box userHiveBox = await Hive.openBox('user_data');
    constantsHolder.userDetailsBox = userHiveBox;
    final value = userHiveBox.get('profile_info');
    if (value != null) {
      return true;
    }
    return false;
  }

  Future<void> storeUserDate(Map<String, dynamic> jsonMap) async {
    await constantsHolder.userDetailsBox.put('profile_info', jsonMap);
    log("Saved User Data");
  }
}
