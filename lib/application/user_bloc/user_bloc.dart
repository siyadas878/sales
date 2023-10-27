import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sale/domain/core/failures/main_failure.dart';
import 'package:sale/domain/models/user_model/user_model.dart';
import 'package:sale/domain/repository/user_repo.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepo userRepo;
  UserBloc(this.userRepo) : super(UserState.initial()) {
     on<GetUserData>((event, emit) async{
      emit(state.copyWith(isLoading: true,successOrFailure: none()));
      final Either<MainFailure,UserModel> userData= await userRepo.getUserData();
      emit(userData.fold(
          (failure) => state.copyWith(
              successOrFailure: some(left(failure)),
              isLoading: false), (success) {
        return state.copyWith(
            getUserData: success,
            successOrFailure: some(right(success)),
            isLoading: false);
      }));
    });
  }
}
