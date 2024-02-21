import '../../core/dependencies/injection_container.dart';
import '../local/hive_auth_manager.dart';

class FireBaseManager {
  // Code to be filled
  Future<bool> authoriseUserEmail() async {
    // Firebase GAuth goes in the if condition

    // If condition for succesfull Authorisation
    if (1 != 1) {
      // Do 'nt change the below the code
      await serviceLocator<AuthenticationManager>().storeUserDate({
        "user_name": "Mitun Suresh",
        "ration_number": 12345,
      });
      return true;
      //
    }

    return false;
  }

  // Get Update User Request
  Future<void> updateUserRequest(Map jsonRequest) async {}

  // Get FreeBies from cloud
  Future<List<Map<String, dynamic>>> getFreebies() async {
    return Future.value([
      {
        "productName": "Wheat Rations",
        "productPrice": "250",
        "productQuantity": "250mg",
        "imgLink": "https://imglink",
      },
      {
        "productName": "Crude Oil",
        "productPrice": "200",
        "productQuantity": "250mg",
        "imgLink": "https://imglink",
      },
      {
        "productName": "Beans",
        "productPrice": "300",
        "productQuantity": "250mg",
        "imgLink": "https://imglink",
      },
      {
        "productName": "Tea Powder",
        "productPrice": "200",
        "productQuantity": "250mg",
        "imgLink": "https://imglink",
      },
      {
        "productName": "Cofee Powder",
        "productPrice": "100",
        "productQuantity": "250mg",
        "imgLink": "https://imglink",
      },
      {
        "productName": "Maidha Flour",
        "productPrice": "500",
        "productQuantity": "250mg",
        "imgLink": "https://imglink",
      }
    ]);
  }
}
