import 'package:yorhia/config/firebase/firebase_manager.dart';
import 'package:yorhia/config/storage/storage.dart';
import 'package:yorhia/features/order/data/data_src/remote_order_repository.dart';
import 'package:yorhia/features/shop/data/model/order_model.dart';

class OrderRemoteDataSrcIpml implements OrderRemoteDataSrc {
  // Dependencies
  final RunTimeStorageManager runTimeStorageManager;
  final FirebaseManager firebaseManager;

  // Initialisation
  OrderRemoteDataSrcIpml(this.runTimeStorageManager, this.firebaseManager);

  @override
  Future<List<OrderModel>> fetchUserOrders() {
    throw UnimplementedError();
  }
}
