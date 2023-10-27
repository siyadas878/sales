import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:sale/domain/core/failures/main_failure.dart';
import 'package:sale/domain/models/product_model/product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sale/domain/repository/product_repo.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRepo productRepo;
  ProductBloc(this.productRepo) : super(ProductState.initial()) {
    on<GetAllProducts>((event, emit) async{
      emit(state.copyWith(isLoading: true,successOrFailure: none()));
      final Either<MainFailure,List<ProductModel>> allProducts= await productRepo.fetchProducts();
      emit(allProducts.fold(
          (failure) => state.copyWith(
              successOrFailure: some(left(failure)),
              isLoading: false), (success) {
        return state.copyWith(
            getAllProducts: success,
            successOrFailure: some(right(success)),
            isLoading: false);
      }));
    });
  }
}
