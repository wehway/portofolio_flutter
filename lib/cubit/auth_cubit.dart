import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:top_train/models/user_model.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  void signUp({required String email, required})
}
