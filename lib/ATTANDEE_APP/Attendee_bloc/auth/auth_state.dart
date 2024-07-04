 import 'package:equatable/equatable.dart';

enum SignupStatus{
  initial,
  loading,
  loaded
}

enum LoginStatus{
  initial,
  loading,
  loaded
}

enum VerifyStatus{
  initial,
  loading,
  loaded
}

class AuthState extends Equatable {
  SignupStatus signupStatus;
  LoginStatus loginStatus;
  VerifyStatus verifyStatus;
  int signUpResponse;


  AuthState({
    this.signupStatus=SignupStatus.initial,
    this.loginStatus=LoginStatus.initial,
    this.verifyStatus=VerifyStatus.initial,
    this.signUpResponse=0

});

  AuthState copyWith({
    SignupStatus? signupStatus,
    LoginStatus? loginStatus,
    VerifyStatus? verifyStatus,
    int? signUpResponse
  }){
    return AuthState(
      signupStatus: signupStatus??this.signupStatus,
      loginStatus: loginStatus??this.loginStatus,
      verifyStatus: verifyStatus??this.verifyStatus,
      signUpResponse: signUpResponse??this.signUpResponse
    );
  }
  @override
  List<Object?> get props => [signupStatus,loginStatus,verifyStatus];
}

