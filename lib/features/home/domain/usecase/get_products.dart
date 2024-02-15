import '../../../../core/usecases/usecases.dart';
import '../entity/product_entity.dart';
import '../repo/home_repository.dart';

class GetProductUseCase implements UseCase<List<ProductEntity>, void> {
  final HomeRepository homeRepository;

  GetProductUseCase(this.homeRepository);

  @override
  Future<List<ProductEntity>> call({void params}) async {
    return await homeRepository.getProducts();
  }
}
