// ignore_for_file: depend_on_referenced_packages, unnecessary_import

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sale/domain/core/failures/main_failure.dart';
import 'package:sale/domain/repository/authentication_repo.dart';
import '../../presentation/screens/signup_screen/widgets/otp_popup.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final Authentication auth;
  SignUpBloc(this.auth) : super(SignUpState.initial()) {
    on<SignUp>((event, emit) async {
      emit(state.copyWith(isLoading: true, successOrFailure: none()));
      final Either<MainFailure, String> result = await auth.signUp(
          event.fname, event.lname, event.email, event.mobile, event.password);

      emit(result.fold(
          (failure) => state.copyWith(
              successOrFailure: some(left(failure)),
              isLoading: false), (success) {
        showDialog(
          context: event.context,
          builder: (context) {
            return ShowOtpDialog(otpkeydata: success);
          },
        );
        return state.copyWith(
            otpKey: success,
            successOrFailure: some(right(success)),
            isLoading: false);
      }));
    });

    on<OtpVerification>((event, emit) async {
      emit(state.copyWith(isLoading: false, successOrFailure: none()));
      final Either<MainFailure, void> result =
          await auth.otpVerification(event.otp, event.otpKey);
      emit(result.fold(
        (failure) => state.copyWith(
            successOrFailure: some(left(failure)),
            isLoading: false,
            isOtpVerificationSuccessful: false),
        (success) => state.copyWith(
            successOrFailure: some(right('success')),
            isLoading: false,
            isOtpVerificationSuccessful: true),
      ));
    });

    on<LogIn>((event, emit) async {
      emit(state.copyWith(isLoading: false, successOrFailure: none()));
      final Either<MainFailure, void> result =
          await auth.logIn(event.mobile, event.password);
      emit(result.fold(
        (failure) => state.copyWith(
            successOrFailure: some(left(failure)),
            isLoading: false,
            isLoginSuccessful: false),
        (success) => state.copyWith(
            successOrFailure: some(right('success')),
            isLoading: false,
            isLoginSuccessful: true),
      ));
    });

    on<LogOut>((event, emit) async {
      emit(state.copyWith(isLoading: false, successOrFailure: none()));
      final Either<MainFailure, void> result = await auth.logOut();
      emit(result.fold(
        (failure) => state.copyWith(
            successOrFailure: some(left(failure)),
            isLoading: false,
            isLoginSuccessful: false),
        (success) => state.copyWith(
            successOrFailure: some(right('success')),
            isLoading: false,
            isLoginSuccessful: true),
      ));
    });
  }
}
