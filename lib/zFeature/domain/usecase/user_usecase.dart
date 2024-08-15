import 'package:clean_architecture_test/zFeature/domain/domains.dart';

class UserUseCase {
  final UserRepository _repository;

  UserUseCase(this._repository);

  Future<UserEntity> execute() async => await _repository.getUserData();
}
