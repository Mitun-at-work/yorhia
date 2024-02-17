class FireBaseManager {
  // Get Update User Request
  Future<void> updateUserRequest(Map jsonRequest) async {}

  // Get FreeBies from cloud
  Future<List<Map<String, dynamic>>> getFreebies() async {
    await Future.delayed(const Duration(seconds: 5));
    return Future.value([
      {
        "productName": "Wheat Rations",
        "productPrice": "240",
        "productQuantity": "250mg",
        "imgLink": "https://imglink",
      }
    ]);
  }
}
