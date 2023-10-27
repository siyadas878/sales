// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fname, String lname, String email,
            String mobile, String password, BuildContext context)
        signUp,
    required TResult Function(String otp, String otpKey) otpVerification,
    required TResult Function(String mobile, String password) logIn,
    required TResult Function() logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fname, String lname, String email, String mobile,
            String password, BuildContext context)?
        signUp,
    TResult? Function(String otp, String otpKey)? otpVerification,
    TResult? Function(String mobile, String password)? logIn,
    TResult? Function()? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fname, String lname, String email, String mobile,
            String password, BuildContext context)?
        signUp,
    TResult Function(String otp, String otpKey)? otpVerification,
    TResult Function(String mobile, String password)? logIn,
    TResult Function()? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUp value) signUp,
    required TResult Function(OtpVerification value) otpVerification,
    required TResult Function(LogIn value) logIn,
    required TResult Function(LogOut value) logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUp value)? signUp,
    TResult? Function(OtpVerification value)? otpVerification,
    TResult? Function(LogIn value)? logIn,
    TResult? Function(LogOut value)? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUp value)? signUp,
    TResult Function(OtpVerification value)? otpVerification,
    TResult Function(LogIn value)? logIn,
    TResult Function(LogOut value)? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(
          SignUpEvent value, $Res Function(SignUpEvent) then) =
      _$SignUpEventCopyWithImpl<$Res, SignUpEvent>;
}

/// @nodoc
class _$SignUpEventCopyWithImpl<$Res, $Val extends SignUpEvent>
    implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignUpImplCopyWith<$Res> {
  factory _$$SignUpImplCopyWith(
          _$SignUpImpl value, $Res Function(_$SignUpImpl) then) =
      __$$SignUpImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String fname,
      String lname,
      String email,
      String mobile,
      String password,
      BuildContext context});
}

/// @nodoc
class __$$SignUpImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$SignUpImpl>
    implements _$$SignUpImplCopyWith<$Res> {
  __$$SignUpImplCopyWithImpl(
      _$SignUpImpl _value, $Res Function(_$SignUpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fname = null,
    Object? lname = null,
    Object? email = null,
    Object? mobile = null,
    Object? password = null,
    Object? context = null,
  }) {
    return _then(_$SignUpImpl(
      fname: null == fname
          ? _value.fname
          : fname // ignore: cast_nullable_to_non_nullable
              as String,
      lname: null == lname
          ? _value.lname
          : lname // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$SignUpImpl implements SignUp {
  const _$SignUpImpl(
      {required this.fname,
      required this.lname,
      required this.email,
      required this.mobile,
      required this.password,
      required this.context});

  @override
  final String fname;
  @override
  final String lname;
  @override
  final String email;
  @override
  final String mobile;
  @override
  final String password;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'SignUpEvent.signUp(fname: $fname, lname: $lname, email: $email, mobile: $mobile, password: $password, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpImpl &&
            (identical(other.fname, fname) || other.fname == fname) &&
            (identical(other.lname, lname) || other.lname == lname) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, fname, lname, email, mobile, password, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpImplCopyWith<_$SignUpImpl> get copyWith =>
      __$$SignUpImplCopyWithImpl<_$SignUpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fname, String lname, String email,
            String mobile, String password, BuildContext context)
        signUp,
    required TResult Function(String otp, String otpKey) otpVerification,
    required TResult Function(String mobile, String password) logIn,
    required TResult Function() logOut,
  }) {
    return signUp(fname, lname, email, mobile, password, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fname, String lname, String email, String mobile,
            String password, BuildContext context)?
        signUp,
    TResult? Function(String otp, String otpKey)? otpVerification,
    TResult? Function(String mobile, String password)? logIn,
    TResult? Function()? logOut,
  }) {
    return signUp?.call(fname, lname, email, mobile, password, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fname, String lname, String email, String mobile,
            String password, BuildContext context)?
        signUp,
    TResult Function(String otp, String otpKey)? otpVerification,
    TResult Function(String mobile, String password)? logIn,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(fname, lname, email, mobile, password, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUp value) signUp,
    required TResult Function(OtpVerification value) otpVerification,
    required TResult Function(LogIn value) logIn,
    required TResult Function(LogOut value) logOut,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUp value)? signUp,
    TResult? Function(OtpVerification value)? otpVerification,
    TResult? Function(LogIn value)? logIn,
    TResult? Function(LogOut value)? logOut,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUp value)? signUp,
    TResult Function(OtpVerification value)? otpVerification,
    TResult Function(LogIn value)? logIn,
    TResult Function(LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class SignUp implements SignUpEvent {
  const factory SignUp(
      {required final String fname,
      required final String lname,
      required final String email,
      required final String mobile,
      required final String password,
      required final BuildContext context}) = _$SignUpImpl;

  String get fname;
  String get lname;
  String get email;
  String get mobile;
  String get password;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$SignUpImplCopyWith<_$SignUpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtpVerificationImplCopyWith<$Res> {
  factory _$$OtpVerificationImplCopyWith(_$OtpVerificationImpl value,
          $Res Function(_$OtpVerificationImpl) then) =
      __$$OtpVerificationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String otp, String otpKey});
}

/// @nodoc
class __$$OtpVerificationImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$OtpVerificationImpl>
    implements _$$OtpVerificationImplCopyWith<$Res> {
  __$$OtpVerificationImplCopyWithImpl(
      _$OtpVerificationImpl _value, $Res Function(_$OtpVerificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
    Object? otpKey = null,
  }) {
    return _then(_$OtpVerificationImpl(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      otpKey: null == otpKey
          ? _value.otpKey
          : otpKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OtpVerificationImpl implements OtpVerification {
  const _$OtpVerificationImpl({required this.otp, required this.otpKey});

  @override
  final String otp;
  @override
  final String otpKey;

  @override
  String toString() {
    return 'SignUpEvent.otpVerification(otp: $otp, otpKey: $otpKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpVerificationImpl &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.otpKey, otpKey) || other.otpKey == otpKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp, otpKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpVerificationImplCopyWith<_$OtpVerificationImpl> get copyWith =>
      __$$OtpVerificationImplCopyWithImpl<_$OtpVerificationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fname, String lname, String email,
            String mobile, String password, BuildContext context)
        signUp,
    required TResult Function(String otp, String otpKey) otpVerification,
    required TResult Function(String mobile, String password) logIn,
    required TResult Function() logOut,
  }) {
    return otpVerification(otp, otpKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fname, String lname, String email, String mobile,
            String password, BuildContext context)?
        signUp,
    TResult? Function(String otp, String otpKey)? otpVerification,
    TResult? Function(String mobile, String password)? logIn,
    TResult? Function()? logOut,
  }) {
    return otpVerification?.call(otp, otpKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fname, String lname, String email, String mobile,
            String password, BuildContext context)?
        signUp,
    TResult Function(String otp, String otpKey)? otpVerification,
    TResult Function(String mobile, String password)? logIn,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (otpVerification != null) {
      return otpVerification(otp, otpKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUp value) signUp,
    required TResult Function(OtpVerification value) otpVerification,
    required TResult Function(LogIn value) logIn,
    required TResult Function(LogOut value) logOut,
  }) {
    return otpVerification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUp value)? signUp,
    TResult? Function(OtpVerification value)? otpVerification,
    TResult? Function(LogIn value)? logIn,
    TResult? Function(LogOut value)? logOut,
  }) {
    return otpVerification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUp value)? signUp,
    TResult Function(OtpVerification value)? otpVerification,
    TResult Function(LogIn value)? logIn,
    TResult Function(LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (otpVerification != null) {
      return otpVerification(this);
    }
    return orElse();
  }
}

abstract class OtpVerification implements SignUpEvent {
  const factory OtpVerification(
      {required final String otp,
      required final String otpKey}) = _$OtpVerificationImpl;

  String get otp;
  String get otpKey;
  @JsonKey(ignore: true)
  _$$OtpVerificationImplCopyWith<_$OtpVerificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogInImplCopyWith<$Res> {
  factory _$$LogInImplCopyWith(
          _$LogInImpl value, $Res Function(_$LogInImpl) then) =
      __$$LogInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String mobile, String password});
}

/// @nodoc
class __$$LogInImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$LogInImpl>
    implements _$$LogInImplCopyWith<$Res> {
  __$$LogInImplCopyWithImpl(
      _$LogInImpl _value, $Res Function(_$LogInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobile = null,
    Object? password = null,
  }) {
    return _then(_$LogInImpl(
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LogInImpl implements LogIn {
  const _$LogInImpl({required this.mobile, required this.password});

  @override
  final String mobile;
  @override
  final String password;

  @override
  String toString() {
    return 'SignUpEvent.logIn(mobile: $mobile, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogInImpl &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mobile, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogInImplCopyWith<_$LogInImpl> get copyWith =>
      __$$LogInImplCopyWithImpl<_$LogInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fname, String lname, String email,
            String mobile, String password, BuildContext context)
        signUp,
    required TResult Function(String otp, String otpKey) otpVerification,
    required TResult Function(String mobile, String password) logIn,
    required TResult Function() logOut,
  }) {
    return logIn(mobile, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fname, String lname, String email, String mobile,
            String password, BuildContext context)?
        signUp,
    TResult? Function(String otp, String otpKey)? otpVerification,
    TResult? Function(String mobile, String password)? logIn,
    TResult? Function()? logOut,
  }) {
    return logIn?.call(mobile, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fname, String lname, String email, String mobile,
            String password, BuildContext context)?
        signUp,
    TResult Function(String otp, String otpKey)? otpVerification,
    TResult Function(String mobile, String password)? logIn,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (logIn != null) {
      return logIn(mobile, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUp value) signUp,
    required TResult Function(OtpVerification value) otpVerification,
    required TResult Function(LogIn value) logIn,
    required TResult Function(LogOut value) logOut,
  }) {
    return logIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUp value)? signUp,
    TResult? Function(OtpVerification value)? otpVerification,
    TResult? Function(LogIn value)? logIn,
    TResult? Function(LogOut value)? logOut,
  }) {
    return logIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUp value)? signUp,
    TResult Function(OtpVerification value)? otpVerification,
    TResult Function(LogIn value)? logIn,
    TResult Function(LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (logIn != null) {
      return logIn(this);
    }
    return orElse();
  }
}

abstract class LogIn implements SignUpEvent {
  const factory LogIn(
      {required final String mobile,
      required final String password}) = _$LogInImpl;

  String get mobile;
  String get password;
  @JsonKey(ignore: true)
  _$$LogInImplCopyWith<_$LogInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogOutImplCopyWith<$Res> {
  factory _$$LogOutImplCopyWith(
          _$LogOutImpl value, $Res Function(_$LogOutImpl) then) =
      __$$LogOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$LogOutImpl>
    implements _$$LogOutImplCopyWith<$Res> {
  __$$LogOutImplCopyWithImpl(
      _$LogOutImpl _value, $Res Function(_$LogOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogOutImpl implements LogOut {
  const _$LogOutImpl();

  @override
  String toString() {
    return 'SignUpEvent.logOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fname, String lname, String email,
            String mobile, String password, BuildContext context)
        signUp,
    required TResult Function(String otp, String otpKey) otpVerification,
    required TResult Function(String mobile, String password) logIn,
    required TResult Function() logOut,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fname, String lname, String email, String mobile,
            String password, BuildContext context)?
        signUp,
    TResult? Function(String otp, String otpKey)? otpVerification,
    TResult? Function(String mobile, String password)? logIn,
    TResult? Function()? logOut,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fname, String lname, String email, String mobile,
            String password, BuildContext context)?
        signUp,
    TResult Function(String otp, String otpKey)? otpVerification,
    TResult Function(String mobile, String password)? logIn,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUp value) signUp,
    required TResult Function(OtpVerification value) otpVerification,
    required TResult Function(LogIn value) logIn,
    required TResult Function(LogOut value) logOut,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUp value)? signUp,
    TResult? Function(OtpVerification value)? otpVerification,
    TResult? Function(LogIn value)? logIn,
    TResult? Function(LogOut value)? logOut,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUp value)? signUp,
    TResult Function(OtpVerification value)? otpVerification,
    TResult Function(LogIn value)? logIn,
    TResult Function(LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class LogOut implements SignUpEvent {
  const factory LogOut() = _$LogOutImpl;
}

/// @nodoc
mixin _$SignUpState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get otpKey => throw _privateConstructorUsedError;
  Option<Either<MainFailure, String>> get successOrFailure =>
      throw _privateConstructorUsedError;
  bool? get isLoginSuccessful => throw _privateConstructorUsedError;
  bool? get isOtpVerificationSuccessful => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
  @useResult
  $Res call(
      {bool isLoading,
      String? otpKey,
      Option<Either<MainFailure, String>> successOrFailure,
      bool? isLoginSuccessful,
      bool? isOtpVerificationSuccessful});
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? otpKey = freezed,
    Object? successOrFailure = null,
    Object? isLoginSuccessful = freezed,
    Object? isOtpVerificationSuccessful = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      otpKey: freezed == otpKey
          ? _value.otpKey
          : otpKey // ignore: cast_nullable_to_non_nullable
              as String?,
      successOrFailure: null == successOrFailure
          ? _value.successOrFailure
          : successOrFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, String>>,
      isLoginSuccessful: freezed == isLoginSuccessful
          ? _value.isLoginSuccessful
          : isLoginSuccessful // ignore: cast_nullable_to_non_nullable
              as bool?,
      isOtpVerificationSuccessful: freezed == isOtpVerificationSuccessful
          ? _value.isOtpVerificationSuccessful
          : isOtpVerificationSuccessful // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpStateImplCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$$SignUpStateImplCopyWith(
          _$SignUpStateImpl value, $Res Function(_$SignUpStateImpl) then) =
      __$$SignUpStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String? otpKey,
      Option<Either<MainFailure, String>> successOrFailure,
      bool? isLoginSuccessful,
      bool? isOtpVerificationSuccessful});
}

/// @nodoc
class __$$SignUpStateImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateImpl>
    implements _$$SignUpStateImplCopyWith<$Res> {
  __$$SignUpStateImplCopyWithImpl(
      _$SignUpStateImpl _value, $Res Function(_$SignUpStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? otpKey = freezed,
    Object? successOrFailure = null,
    Object? isLoginSuccessful = freezed,
    Object? isOtpVerificationSuccessful = freezed,
  }) {
    return _then(_$SignUpStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      otpKey: freezed == otpKey
          ? _value.otpKey
          : otpKey // ignore: cast_nullable_to_non_nullable
              as String?,
      successOrFailure: null == successOrFailure
          ? _value.successOrFailure
          : successOrFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, String>>,
      isLoginSuccessful: freezed == isLoginSuccessful
          ? _value.isLoginSuccessful
          : isLoginSuccessful // ignore: cast_nullable_to_non_nullable
              as bool?,
      isOtpVerificationSuccessful: freezed == isOtpVerificationSuccessful
          ? _value.isOtpVerificationSuccessful
          : isOtpVerificationSuccessful // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$SignUpStateImpl implements _SignUpState {
  const _$SignUpStateImpl(
      {required this.isLoading,
      this.otpKey,
      required this.successOrFailure,
      this.isLoginSuccessful,
      this.isOtpVerificationSuccessful});

  @override
  final bool isLoading;
  @override
  final String? otpKey;
  @override
  final Option<Either<MainFailure, String>> successOrFailure;
  @override
  final bool? isLoginSuccessful;
  @override
  final bool? isOtpVerificationSuccessful;

  @override
  String toString() {
    return 'SignUpState(isLoading: $isLoading, otpKey: $otpKey, successOrFailure: $successOrFailure, isLoginSuccessful: $isLoginSuccessful, isOtpVerificationSuccessful: $isOtpVerificationSuccessful)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.otpKey, otpKey) || other.otpKey == otpKey) &&
            (identical(other.successOrFailure, successOrFailure) ||
                other.successOrFailure == successOrFailure) &&
            (identical(other.isLoginSuccessful, isLoginSuccessful) ||
                other.isLoginSuccessful == isLoginSuccessful) &&
            (identical(other.isOtpVerificationSuccessful,
                    isOtpVerificationSuccessful) ||
                other.isOtpVerificationSuccessful ==
                    isOtpVerificationSuccessful));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, otpKey,
      successOrFailure, isLoginSuccessful, isOtpVerificationSuccessful);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpStateImplCopyWith<_$SignUpStateImpl> get copyWith =>
      __$$SignUpStateImplCopyWithImpl<_$SignUpStateImpl>(this, _$identity);
}

abstract class _SignUpState implements SignUpState {
  const factory _SignUpState(
      {required final bool isLoading,
      final String? otpKey,
      required final Option<Either<MainFailure, String>> successOrFailure,
      final bool? isLoginSuccessful,
      final bool? isOtpVerificationSuccessful}) = _$SignUpStateImpl;

  @override
  bool get isLoading;
  @override
  String? get otpKey;
  @override
  Option<Either<MainFailure, String>> get successOrFailure;
  @override
  bool? get isLoginSuccessful;
  @override
  bool? get isOtpVerificationSuccessful;
  @override
  @JsonKey(ignore: true)
  _$$SignUpStateImplCopyWith<_$SignUpStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
