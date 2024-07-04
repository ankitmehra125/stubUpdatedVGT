abstract class AuthEvent {}

class SignupEvent extends AuthEvent{
  String username;
  String email;
  String password;
  SignupEvent(this.username,this.email,this.password);
}

class LoginEvent extends AuthEvent{
  String number;
  LoginEvent(this.number);
}

class VerifyOtpEvent extends AuthEvent{
  String otp;
  VerifyOtpEvent(this.otp);
}
