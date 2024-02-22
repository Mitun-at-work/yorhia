import '../../../../core/usecase/use_case.dart';
import '../repository/onboard_repository.dart';

class AuthenticateUserCase implements UseCase<bool, void> {
  final OnboardRepository onboardRepository;

  AuthenticateUserCase(this.onboardRepository);

  @override
  Future<bool> call({void params}) {
    return onboardRepository.isAuthenticated();
  }
}
