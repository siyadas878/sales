part of 'nav_bloc.dart';

@freezed
class NavState with _$NavState {
  const factory NavState({
    required int index,
  }) = _NavState;
}