import 'package:yoriha/config/firebase/firebase_manager.dart';
import 'package:yoriha/config/storage/storage.dart';
import 'package:yoriha/features/order/data/data_src/remote_order_repository.dart';
import 'package:yoriha/features/shop/data/model/order_model.dart';

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
