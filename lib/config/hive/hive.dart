import 'dart:developer';

import 'package:hive/hive.dart';

class HiveManger {
  // Initialisation Class Data
  String boxName, userDataMap;

  // Denotes the User Box which holds the user data
  late Box _userBox;

  // Initialiser
  HiveManger({
    this.boxName = "user_details",
    this.userDataMap = "user_profile",
  });

  // Initialise Hive Box
  Future<void> initializeBox() async {
    if (!Hive.isBoxOpen(boxName)) {
      _userBox = await Hive.openBox(boxName); // Initialises the hive box
    }
  }

  // Read from the Hive Box
  Future readFromBox() async {
    return await _userBox.get(userDataMap);
  }

  // Write to Hive Box
  Future<void> writeToBox(Map<String, dynamic> jsonMap) async {
    await _userBox.put(userDataMap, jsonMap);
  }
}
