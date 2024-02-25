import '../../../../../config/firebase/firebase_manager.dart';
import 'remote_shop_data_src.dart';
import '../../../domain/entity/order_entity.dart';

class ShopRemoteDataSrcImpl implements ShopRemoteDataSrc {
  //
  final FirebaseManager firebaseManager;

  //
  ShopRemoteDataSrcImpl(this.firebaseManager);

  @override
  Future<void> updateOrder(OrderEntity orderEntity) async {
    await firebaseManager.addDocumentToCollection(
        orderEntity.toMap(), 'orders');
  }
}
