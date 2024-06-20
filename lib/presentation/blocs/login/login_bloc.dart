import 'package:bloc/bloc.dart';
import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginSubmitted>(_onLoginSubmitted);
  }

  Future<void> _onLoginSubmitted(LoginSubmitted event, Emitter<LoginState> emit) async {
    emit(LoginLoading());
    await Future.delayed(Duration(seconds: 2));
    if (event.email == "test@example.com" && event.password == "password") {
      emit(LoginSuccess());
    } else {
      emit(LoginFailure(error: "Invalid email or password"));
    }
  }
}
