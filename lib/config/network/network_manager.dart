import 'package:connectivity_plus/connectivity_plus.dart';

class NetworkManager {
  final Connectivity connectivity = Connectivity();

  // Check Whether the device is connected to internet
  Future<bool> isConnected() async {
    final ConnectivityResult connectionResult =
        await connectivity.checkConnectivity();

    if (connectionResult == ConnectivityResult.mobile ||
        connectionResult == ConnectivityResult.wifi) {
      return true;
    }
    return false;
  }
}
