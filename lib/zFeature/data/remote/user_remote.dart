import 'package:clean_architecture_test/zFeature/data/datas.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
part 'user_remote.g.dart';

@RestApi(baseUrl: 'https://reqres.in/')
abstract class UserRemote {
  factory UserRemote(Dio dio, {String baseUrl}) = _UserRemote;

  @GET('api/users/2')
  Future<UserModel> getUser();
}
