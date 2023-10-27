part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    required bool isLoading,
    String? otpKey,
    required Option<Either<MainFailure, String>> successOrFailure,
    bool? isLoginSuccessful,
    bool? isOtpVerificationSuccessful,
  }) = _SignUpState;

  factory SignUpState.initial() {
    return SignUpState(
      isLoading: false,
      successOrFailure: none(),
      isLoginSuccessful: false,
      isOtpVerificationSuccessful: false,
    );
  }
}
