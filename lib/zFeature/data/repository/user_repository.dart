import 'package:clean_architecture_test/zFeature/data/remote/user_remote.dart';
import 'package:clean_architecture_test/zFeature/domain/domains.dart';

class UserRepositoryImpl implements UserRepository {
  UserRemote userRemote;

  UserRepositoryImpl(this.userRemote);

  @override
  Future<UserEntity> getUserData() async {
    final user = await userRemote.getUser();
    return UserEntity(
        data: Data(
      id: user.data?.id ?? 0,
      avatar: user.data!.avatar!,
      email: user.data!.email!,
      firstName: user.data!.firstName!,
      lastName: user.data!.lastName!,
    ));
  }
}
