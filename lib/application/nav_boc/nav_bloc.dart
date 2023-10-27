// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'nav_event.dart';
part 'nav_state.dart';
part 'nav_bloc.freezed.dart';

class NavBloc extends Bloc<NavEvent, NavState> {
  NavBloc() : super(const NavState(index: 0)) {
    on<NavEvent>((event, emit) {
      if (event is _SelectIndexEvent) {
        emit(NavState(index: event.index));
      }
    });
  }
}