import 'package:dartz/dartz.dart';
import 'package:sale/domain/core/failures/main_failure.dart';
import 'package:sale/domain/models/category_mode/category_model.dart';

abstract class CategoryRepo {
  Future<Either<MainFailure,List<CategoryModel>>> getAllCategory();
}