import 'package:clean_architecture_test/zFeature/domain/entities/user_entities.dart';

abstract class UserRepository {
  Future<UserEntity> getUserData();
}
