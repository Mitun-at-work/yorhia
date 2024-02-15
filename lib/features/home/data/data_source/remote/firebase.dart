class FireBaseService {
  Future<List<Map<String, dynamic>>> getUserCollection() async {
    return Future.value([
      {
        'productName': 'Seesame Oil',
        'productImgLink': 'https://noimg.com',
        'productQuantity': '250mg',
        'productPrice': '50',
      },
      {
        'productName': 'Gingley Oil',
        'productImgLink': 'https://noimg.com',
        'productQuantity': '210mg',
        'productPrice': '10',
      },
      {
        'productName': 'GroundNut Oil',
        'productImgLink': 'https://noimg.com',
        'productQuantity': '20mg',
        'productPrice': '50',
      },
    ]);
  }
}
