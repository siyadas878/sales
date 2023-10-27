part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState{
  const factory ProductState({
    required bool isLoading,
    List<ProductModel>? getAllProducts,
    required Option<Either<MainFailure, List<ProductModel>>> successOrFailure,
  }) = _ProductState;

  factory ProductState.initial() {
    return ProductState(
      isLoading: false,
      successOrFailure: none(),
    );
  }
}
