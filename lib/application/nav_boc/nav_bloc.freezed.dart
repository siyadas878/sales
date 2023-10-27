// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nav_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NavEvent {
  int get index => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) selectIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? selectIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? selectIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectIndexEvent value) selectIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectIndexEvent value)? selectIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectIndexEvent value)? selectIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavEventCopyWith<NavEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavEventCopyWith<$Res> {
  factory $NavEventCopyWith(NavEvent value, $Res Function(NavEvent) then) =
      _$NavEventCopyWithImpl<$Res, NavEvent>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$NavEventCopyWithImpl<$Res, $Val extends NavEvent>
    implements $NavEventCopyWith<$Res> {
  _$NavEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelectIndexEventImplCopyWith<$Res>
    implements $NavEventCopyWith<$Res> {
  factory _$$SelectIndexEventImplCopyWith(_$SelectIndexEventImpl value,
          $Res Function(_$SelectIndexEventImpl) then) =
      __$$SelectIndexEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$SelectIndexEventImplCopyWithImpl<$Res>
    extends _$NavEventCopyWithImpl<$Res, _$SelectIndexEventImpl>
    implements _$$SelectIndexEventImplCopyWith<$Res> {
  __$$SelectIndexEventImplCopyWithImpl(_$SelectIndexEventImpl _value,
      $Res Function(_$SelectIndexEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$SelectIndexEventImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectIndexEventImpl implements _SelectIndexEvent {
  const _$SelectIndexEventImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'NavEvent.selectIndex(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectIndexEventImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectIndexEventImplCopyWith<_$SelectIndexEventImpl> get copyWith =>
      __$$SelectIndexEventImplCopyWithImpl<_$SelectIndexEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) selectIndex,
  }) {
    return selectIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? selectIndex,
  }) {
    return selectIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? selectIndex,
    required TResult orElse(),
  }) {
    if (selectIndex != null) {
      return selectIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectIndexEvent value) selectIndex,
  }) {
    return selectIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectIndexEvent value)? selectIndex,
  }) {
    return selectIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectIndexEvent value)? selectIndex,
    required TResult orElse(),
  }) {
    if (selectIndex != null) {
      return selectIndex(this);
    }
    return orElse();
  }
}

abstract class _SelectIndexEvent implements NavEvent {
  const factory _SelectIndexEvent({required final int index}) =
      _$SelectIndexEventImpl;

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$SelectIndexEventImplCopyWith<_$SelectIndexEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NavState {
  int get index => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavStateCopyWith<NavState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavStateCopyWith<$Res> {
  factory $NavStateCopyWith(NavState value, $Res Function(NavState) then) =
      _$NavStateCopyWithImpl<$Res, NavState>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$NavStateCopyWithImpl<$Res, $Val extends NavState>
    implements $NavStateCopyWith<$Res> {
  _$NavStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NavStateImplCopyWith<$Res>
    implements $NavStateCopyWith<$Res> {
  factory _$$NavStateImplCopyWith(
          _$NavStateImpl value, $Res Function(_$NavStateImpl) then) =
      __$$NavStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$NavStateImplCopyWithImpl<$Res>
    extends _$NavStateCopyWithImpl<$Res, _$NavStateImpl>
    implements _$$NavStateImplCopyWith<$Res> {
  __$$NavStateImplCopyWithImpl(
      _$NavStateImpl _value, $Res Function(_$NavStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$NavStateImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$NavStateImpl implements _NavState {
  const _$NavStateImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'NavState(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavStateImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NavStateImplCopyWith<_$NavStateImpl> get copyWith =>
      __$$NavStateImplCopyWithImpl<_$NavStateImpl>(this, _$identity);
}

abstract class _NavState implements NavState {
  const factory _NavState({required final int index}) = _$NavStateImpl;

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$NavStateImplCopyWith<_$NavStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
