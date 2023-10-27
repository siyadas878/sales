part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState{
  const factory CategoryState({
    required bool isLoading,
    List<CategoryModel>? getAllCategory,
    required Option<Either<MainFailure, List<CategoryModel>>> successOrFailure,
  }) = _CategoryState;

  factory CategoryState.initial() {
    return CategoryState(
      isLoading: false,
      successOrFailure: none(),
    );
  }
}