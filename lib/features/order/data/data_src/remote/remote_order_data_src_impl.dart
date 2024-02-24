import '../../../../../config/firebase/firebase_manager.dart';
import 'remote_order_data_src.dart';
import '../../../domain/entity/order_entity.dart';

class OrderRemoteDataSrcImpl implements OrderRemoteDataSourceRepository {
  //
  final FirebaseManager firebaseManager;

  //
  OrderRemoteDataSrcImpl(this.firebaseManager);

  @override
  Future<void> updateOrder(OrderEntity orderEntity) async {
    await firebaseManager.addDocumentToCollection(
        orderEntity.toMap(), 'orders');
  }
}
