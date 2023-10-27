import 'package:dartz/dartz.dart';
import 'package:sale/domain/core/failures/main_failure.dart';
import 'package:sale/domain/models/product_model/product_model.dart';

abstract class ProductRepo {
  Future<Either<MainFailure,List<ProductModel>>> fetchProducts();
}