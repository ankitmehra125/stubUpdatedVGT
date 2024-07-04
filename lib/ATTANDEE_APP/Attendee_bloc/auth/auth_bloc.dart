import 'package:bloc/bloc.dart';

import 'auth_event.dart';
import 'auth_state.dart';


class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState()) {
    on<SignupEvent>(signUpEvent);
    on<LoginEvent>(loginEvent);
    on<VerifyOtpEvent>(verifyOtpEvent);
  }
  signUpEvent(SignupEvent event, Emitter<AuthState>emit){
    emit(state.copyWith(signupStatus: SignupStatus.loading));
    if(event.username!=""){
      emit(state.copyWith(signupStatus: SignupStatus.loaded));

    }
    emit(state.copyWith(signupStatus: SignupStatus.initial));
  }
  loginEvent(LoginEvent event, Emitter<AuthState>emit){
    emit(state.copyWith(loginStatus: LoginStatus.loading));
    emit(state.copyWith(loginStatus: LoginStatus.loaded));
  }

  verifyOtpEvent(VerifyOtpEvent event,Emitter<AuthState>emit){
    emit(state.copyWith(verifyStatus: VerifyStatus.loading));
    emit(state.copyWith(verifyStatus: VerifyStatus.loaded));
  }


}
