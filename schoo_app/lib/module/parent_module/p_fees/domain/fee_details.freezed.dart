// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fee_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeeDetails _$FeeDetailsFromJson(Map<String, dynamic> json) {
  return _FeeDetails.fromJson(json);
}

/// @nodoc
class _$FeeDetailsTearOff {
  const _$FeeDetailsTearOff();

  _FeeDetails call({required int monthId, required int feeamount}) {
    return _FeeDetails(
      monthId: monthId,
      feeamount: feeamount,
    );
  }

  FeeDetails fromJson(Map<String, Object?> json) {
    return FeeDetails.fromJson(json);
  }
}

/// @nodoc
const $FeeDetails = _$FeeDetailsTearOff();

/// @nodoc
mixin _$FeeDetails {
  int get monthId => throw _privateConstructorUsedError;
  int get feeamount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeeDetailsCopyWith<FeeDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeeDetailsCopyWith<$Res> {
  factory $FeeDetailsCopyWith(
          FeeDetails value, $Res Function(FeeDetails) then) =
      _$FeeDetailsCopyWithImpl<$Res>;
  $Res call({int monthId, int feeamount});
}

/// @nodoc
class _$FeeDetailsCopyWithImpl<$Res> implements $FeeDetailsCopyWith<$Res> {
  _$FeeDetailsCopyWithImpl(this._value, this._then);

  final FeeDetails _value;
  // ignore: unused_field
  final $Res Function(FeeDetails) _then;

  @override
  $Res call({
    Object? monthId = freezed,
    Object? feeamount = freezed,
  }) {
    return _then(_value.copyWith(
      monthId: monthId == freezed
          ? _value.monthId
          : monthId // ignore: cast_nullable_to_non_nullable
              as int,
      feeamount: feeamount == freezed
          ? _value.feeamount
          : feeamount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$FeeDetailsCopyWith<$Res> implements $FeeDetailsCopyWith<$Res> {
  factory _$FeeDetailsCopyWith(
          _FeeDetails value, $Res Function(_FeeDetails) then) =
      __$FeeDetailsCopyWithImpl<$Res>;
  @override
  $Res call({int monthId, int feeamount});
}

/// @nodoc
class __$FeeDetailsCopyWithImpl<$Res> extends _$FeeDetailsCopyWithImpl<$Res>
    implements _$FeeDetailsCopyWith<$Res> {
  __$FeeDetailsCopyWithImpl(
      _FeeDetails _value, $Res Function(_FeeDetails) _then)
      : super(_value, (v) => _then(v as _FeeDetails));

  @override
  _FeeDetails get _value => super._value as _FeeDetails;

  @override
  $Res call({
    Object? monthId = freezed,
    Object? feeamount = freezed,
  }) {
    return _then(_FeeDetails(
      monthId: monthId == freezed
          ? _value.monthId
          : monthId // ignore: cast_nullable_to_non_nullable
              as int,
      feeamount: feeamount == freezed
          ? _value.feeamount
          : feeamount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeeDetails implements _FeeDetails {
  const _$_FeeDetails({required this.monthId, required this.feeamount});

  factory _$_FeeDetails.fromJson(Map<String, dynamic> json) =>
      _$$_FeeDetailsFromJson(json);

  @override
  final int monthId;
  @override
  final int feeamount;

  @override
  String toString() {
    return 'FeeDetails(monthId: $monthId, feeamount: $feeamount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FeeDetails &&
            const DeepCollectionEquality().equals(other.monthId, monthId) &&
            const DeepCollectionEquality().equals(other.feeamount, feeamount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(monthId),
      const DeepCollectionEquality().hash(feeamount));

  @JsonKey(ignore: true)
  @override
  _$FeeDetailsCopyWith<_FeeDetails> get copyWith =>
      __$FeeDetailsCopyWithImpl<_FeeDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeeDetailsToJson(this);
  }
}

abstract class _FeeDetails implements FeeDetails {
  const factory _FeeDetails({required int monthId, required int feeamount}) =
      _$_FeeDetails;

  factory _FeeDetails.fromJson(Map<String, dynamic> json) =
      _$_FeeDetails.fromJson;

  @override
  int get monthId;
  @override
  int get feeamount;
  @override
  @JsonKey(ignore: true)
  _$FeeDetailsCopyWith<_FeeDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
