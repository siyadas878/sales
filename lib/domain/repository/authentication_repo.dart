import 'package:dartz/dartz.dart';
import 'package:sale/domain/core/failures/main_failure.dart';

abstract class Authentication {
  Future<Either<MainFailure, String>> signUp(
      String fname, String lname, String email, String mobile, String password);
  Future<Either<MainFailure, void>> otpVerification(String otp, String otpKey);
  Future<Either<MainFailure, void>> logIn(String mobile, String password);
  Future<Either<MainFailure, void>> logOut();
}
