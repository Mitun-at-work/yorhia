import '../../../../core/usecase/use_case.dart';
import '../entity/product_entity.dart';
import '../repository/home_repository.dart';

class FetchProductsUseCase implements UseCase<List<ProductEntity>, void> {
  final HomeRepository homeRepository;

  FetchProductsUseCase(this.homeRepository);

  @override
  Future<List<ProductEntity>> call({void params}) {
    return homeRepository.fetchRationsCollection();
    // return result;
  }
}
