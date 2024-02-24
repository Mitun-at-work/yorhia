import '../../../../../config/firebase/firebase_manager.dart';
import '../../../../../config/hive/hive_manager.dart';
import 'remote_order_data_source.dart';
import '../../../domain/entity/order_entity.dart';

class OrderRemoteDataSourceImpl implements OrderRemoteDataSource {
  // Manager Dependencies
  final FirebaseManager firebaseManager;
  final HiveManager hiveManager;

  // Initialiser
  OrderRemoteDataSourceImpl(this.firebaseManager, this.hiveManager);

  @override
  Future<void> updateOrderDetails(OrderEntity orderModel) async {
    await firebaseManager.addDocumentToCollection(orderModel.toMap(), 'orders');
  }
}
