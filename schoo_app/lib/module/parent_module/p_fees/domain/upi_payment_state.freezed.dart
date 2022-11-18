// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'upi_payment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UpiPaymentStateTearOff {
  const _$UpiPaymentStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Success success(String trsanctionId) {
    return _Success(
      trsanctionId,
    );
  }

  _Failure failure(String trsanctionId) {
    return _Failure(
      trsanctionId,
    );
  }

  _Cancel cancel(String trsanctionId) {
    return _Cancel(
      trsanctionId,
    );
  }
}

/// @nodoc
const $UpiPaymentState = _$UpiPaymentStateTearOff();

/// @nodoc
mixin _$UpiPaymentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String trsanctionId) success,
    required TResult Function(String trsanctionId) failure,
    required TResult Function(String trsanctionId) cancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String trsanctionId)? success,
    TResult Function(String trsanctionId)? failure,
    TResult Function(String trsanctionId)? cancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String trsanctionId)? success,
    TResult Function(String trsanctionId)? failure,
    TResult Function(String trsanctionId)? cancel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Cancel value) cancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Cancel value)? cancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Cancel value)? cancel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpiPaymentStateCopyWith<$Res> {
  factory $UpiPaymentStateCopyWith(
          UpiPaymentState value, $Res Function(UpiPaymentState) then) =
      _$UpiPaymentStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpiPaymentStateCopyWithImpl<$Res>
    implements $UpiPaymentStateCopyWith<$Res> {
  _$UpiPaymentStateCopyWithImpl(this._value, this._then);

  final UpiPaymentState _value;
  // ignore: unused_field
  final $Res Function(UpiPaymentState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$UpiPaymentStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'UpiPaymentState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String trsanctionId) success,
    required TResult Function(String trsanctionId) failure,
    required TResult Function(String trsanctionId) cancel,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String trsanctionId)? success,
    TResult Function(String trsanctionId)? failure,
    TResult Function(String trsanctionId)? cancel,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String trsanctionId)? success,
    TResult Function(String trsanctionId)? failure,
    TResult Function(String trsanctionId)? cancel,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Cancel value) cancel,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Cancel value)? cancel,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Cancel value)? cancel,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UpiPaymentState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  $Res call({String trsanctionId});
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res> extends _$UpiPaymentStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;

  @override
  $Res call({
    Object? trsanctionId = freezed,
  }) {
    return _then(_Success(
      trsanctionId == freezed
          ? _value.trsanctionId
          : trsanctionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success(this.trsanctionId);

  @override
  final String trsanctionId;

  @override
  String toString() {
    return 'UpiPaymentState.success(trsanctionId: $trsanctionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Success &&
            const DeepCollectionEquality()
                .equals(other.trsanctionId, trsanctionId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(trsanctionId));

  @JsonKey(ignore: true)
  @override
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String trsanctionId) success,
    required TResult Function(String trsanctionId) failure,
    required TResult Function(String trsanctionId) cancel,
  }) {
    return success(trsanctionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String trsanctionId)? success,
    TResult Function(String trsanctionId)? failure,
    TResult Function(String trsanctionId)? cancel,
  }) {
    return success?.call(trsanctionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String trsanctionId)? success,
    TResult Function(String trsanctionId)? failure,
    TResult Function(String trsanctionId)? cancel,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(trsanctionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Cancel value) cancel,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Cancel value)? cancel,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Cancel value)? cancel,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements UpiPaymentState {
  const factory _Success(String trsanctionId) = _$_Success;

  String get trsanctionId;
  @JsonKey(ignore: true)
  _$SuccessCopyWith<_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({String trsanctionId});
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$UpiPaymentStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object? trsanctionId = freezed,
  }) {
    return _then(_Failure(
      trsanctionId == freezed
          ? _value.trsanctionId
          : trsanctionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure(this.trsanctionId);

  @override
  final String trsanctionId;

  @override
  String toString() {
    return 'UpiPaymentState.failure(trsanctionId: $trsanctionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Failure &&
            const DeepCollectionEquality()
                .equals(other.trsanctionId, trsanctionId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(trsanctionId));

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String trsanctionId) success,
    required TResult Function(String trsanctionId) failure,
    required TResult Function(String trsanctionId) cancel,
  }) {
    return failure(trsanctionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String trsanctionId)? success,
    TResult Function(String trsanctionId)? failure,
    TResult Function(String trsanctionId)? cancel,
  }) {
    return failure?.call(trsanctionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String trsanctionId)? success,
    TResult Function(String trsanctionId)? failure,
    TResult Function(String trsanctionId)? cancel,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(trsanctionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Cancel value) cancel,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Cancel value)? cancel,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Cancel value)? cancel,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements UpiPaymentState {
  const factory _Failure(String trsanctionId) = _$_Failure;

  String get trsanctionId;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CancelCopyWith<$Res> {
  factory _$CancelCopyWith(_Cancel value, $Res Function(_Cancel) then) =
      __$CancelCopyWithImpl<$Res>;
  $Res call({String trsanctionId});
}

/// @nodoc
class __$CancelCopyWithImpl<$Res> extends _$UpiPaymentStateCopyWithImpl<$Res>
    implements _$CancelCopyWith<$Res> {
  __$CancelCopyWithImpl(_Cancel _value, $Res Function(_Cancel) _then)
      : super(_value, (v) => _then(v as _Cancel));

  @override
  _Cancel get _value => super._value as _Cancel;

  @override
  $Res call({
    Object? trsanctionId = freezed,
  }) {
    return _then(_Cancel(
      trsanctionId == freezed
          ? _value.trsanctionId
          : trsanctionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Cancel implements _Cancel {
  const _$_Cancel(this.trsanctionId);

  @override
  final String trsanctionId;

  @override
  String toString() {
    return 'UpiPaymentState.cancel(trsanctionId: $trsanctionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Cancel &&
            const DeepCollectionEquality()
                .equals(other.trsanctionId, trsanctionId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(trsanctionId));

  @JsonKey(ignore: true)
  @override
  _$CancelCopyWith<_Cancel> get copyWith =>
      __$CancelCopyWithImpl<_Cancel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String trsanctionId) success,
    required TResult Function(String trsanctionId) failure,
    required TResult Function(String trsanctionId) cancel,
  }) {
    return cancel(trsanctionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String trsanctionId)? success,
    TResult Function(String trsanctionId)? failure,
    TResult Function(String trsanctionId)? cancel,
  }) {
    return cancel?.call(trsanctionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String trsanctionId)? success,
    TResult Function(String trsanctionId)? failure,
    TResult Function(String trsanctionId)? cancel,
    required TResult orElse(),
  }) {
    if (cancel != null) {
      return cancel(trsanctionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Cancel value) cancel,
  }) {
    return cancel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Cancel value)? cancel,
  }) {
    return cancel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Cancel value)? cancel,
    required TResult orElse(),
  }) {
    if (cancel != null) {
      return cancel(this);
    }
    return orElse();
  }
}

abstract class _Cancel implements UpiPaymentState {
  const factory _Cancel(String trsanctionId) = _$_Cancel;

  String get trsanctionId;
  @JsonKey(ignore: true)
  _$CancelCopyWith<_Cancel> get copyWith => throw _privateConstructorUsedError;
}
