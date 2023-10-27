part of 'nav_bloc.dart';

@freezed
class NavEvent with _$NavEvent {
  const factory NavEvent.selectIndex({
    required int index,
  }) = _SelectIndexEvent;
}