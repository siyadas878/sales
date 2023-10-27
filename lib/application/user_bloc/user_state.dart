part of 'user_bloc.dart';

@freezed
class UserState with _$UserState{
  const factory UserState({
    required bool isLoading,
    UserModel? getUserData,
    required Option<Either<MainFailure, UserModel>> successOrFailure,
  }) = _UserState;

  factory UserState.initial() {
    return UserState(
      isLoading: false,
      successOrFailure: none(),
    );
  }
}