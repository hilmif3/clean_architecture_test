import 'package:clean_architecture_test/zFeature/domain/domains.dart';
import 'package:clean_architecture_test/zFeature/domain/usecase/user_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  final UserUseCase userUsecase;

  UserCubit(this.userUsecase) : super(UserInitial());

  void getUser() async {
    emit(UserLoading());
    final user = await userUsecase.execute();
    emit(UserSuccess(user));
  }
}
