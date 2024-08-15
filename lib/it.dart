import 'package:clean_architecture_test/zFeature/data/datas.dart';
import 'package:clean_architecture_test/zFeature/domain/domains.dart';
import 'package:clean_architecture_test/zFeature/domain/usecase/user_usecase.dart';
import 'package:clean_architecture_test/zFeature/presentation/blocs/user_cubit/user_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerFactory(() => UserRemote(getIt()));
  getIt.registerFactory<UserRepository>(() => UserRepositoryImpl(getIt()));

  getIt.registerFactory(() => UserUseCase(getIt()));
  getIt.registerFactory(() => UserCubit(getIt()));
}
