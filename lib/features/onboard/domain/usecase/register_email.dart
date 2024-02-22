import '../../../../core/usecase/use_case.dart';
import '../repository/onboard_repository.dart';

class RegisterEmailUseCase implements UseCase<bool, void> {
  final OnboardRepository onboardRepository;

  RegisterEmailUseCase(this.onboardRepository);

  //
  @override
  Future<bool> call({void params}) {
    return onboardRepository.authenticateUser();
  }
}
