import 'package:dartz/dartz.dart';
import 'package:sale/domain/core/failures/main_failure.dart';
import 'package:sale/domain/models/user_model/user_model.dart';

abstract class UserRepo {
  Future<Either<MainFailure,UserModel>> getUserData();
}