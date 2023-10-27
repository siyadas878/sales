part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.signUp({
    required String fname,
    required String lname,
    required String email,
    required String mobile,
    required String password,
    required BuildContext context
  }) = SignUp;

  const factory SignUpEvent.otpVerification({
    required String otp,
    required String otpKey,
  }) = OtpVerification;

  const factory SignUpEvent.logIn({
    required String mobile,
    required String password
  }) = LogIn;

  const factory SignUpEvent.logOut() = LogOut;
}