import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:sale/domain/core/failures/main_failure.dart';
import 'package:sale/domain/models/category_mode/category_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sale/domain/repository/category_repo.dart';

part 'category_event.dart';
part 'category_state.dart';
part 'category_bloc.freezed.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final CategoryRepo categoryRepo;
  CategoryBloc(this.categoryRepo) : super(CategoryState.initial()) {
    on<GetAllCategory>((event, emit) async{
      emit(state.copyWith(isLoading: true,successOrFailure: none()));
      final Either<MainFailure,List<CategoryModel>> allProducts= await categoryRepo.getAllCategory();
      emit(allProducts.fold(
          (failure) => state.copyWith(
              successOrFailure: some(left(failure)),
              isLoading: false), (success) {
        return state.copyWith(
            getAllCategory: success,
            successOrFailure: some(right(success)),
            isLoading: false);
      }));
    });
  }
}
