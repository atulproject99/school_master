// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fees_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeesHistory _$FeesHistoryFromJson(Map<String, dynamic> json) {
  return _FeesHistory.fromJson(json);
}

/// @nodoc
class _$FeesHistoryTearOff {
  const _$FeesHistoryTearOff();

  _FeesHistory call(
      {required String month,
      required int amount,
      String? date,
      String? mode,
      String? feetype,
      int? payamount}) {
    return _FeesHistory(
      month: month,
      amount: amount,
      date: date,
      mode: mode,
      feetype: feetype,
      payamount: payamount,
    );
  }

  FeesHistory fromJson(Map<String, Object?> json) {
    return FeesHistory.fromJson(json);
  }
}

/// @nodoc
const $FeesHistory = _$FeesHistoryTearOff();

/// @nodoc
mixin _$FeesHistory {
  String get month => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get mode => throw _privateConstructorUsedError;
  String? get feetype => throw _privateConstructorUsedError;
  int? get payamount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeesHistoryCopyWith<FeesHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeesHistoryCopyWith<$Res> {
  factory $FeesHistoryCopyWith(
          FeesHistory value, $Res Function(FeesHistory) then) =
      _$FeesHistoryCopyWithImpl<$Res>;
  $Res call(
      {String month,
      int amount,
      String? date,
      String? mode,
      String? feetype,
      int? payamount});
}

/// @nodoc
class _$FeesHistoryCopyWithImpl<$Res> implements $FeesHistoryCopyWith<$Res> {
  _$FeesHistoryCopyWithImpl(this._value, this._then);

  final FeesHistory _value;
  // ignore: unused_field
  final $Res Function(FeesHistory) _then;

  @override
  $Res call({
    Object? month = freezed,
    Object? amount = freezed,
    Object? date = freezed,
    Object? mode = freezed,
    Object? feetype = freezed,
    Object? payamount = freezed,
  }) {
    return _then(_value.copyWith(
      month: month == freezed
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as String?,
      feetype: feetype == freezed
          ? _value.feetype
          : feetype // ignore: cast_nullable_to_non_nullable
              as String?,
      payamount: payamount == freezed
          ? _value.payamount
          : payamount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$FeesHistoryCopyWith<$Res>
    implements $FeesHistoryCopyWith<$Res> {
  factory _$FeesHistoryCopyWith(
          _FeesHistory value, $Res Function(_FeesHistory) then) =
      __$FeesHistoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String month,
      int amount,
      String? date,
      String? mode,
      String? feetype,
      int? payamount});
}

/// @nodoc
class __$FeesHistoryCopyWithImpl<$Res> extends _$FeesHistoryCopyWithImpl<$Res>
    implements _$FeesHistoryCopyWith<$Res> {
  __$FeesHistoryCopyWithImpl(
      _FeesHistory _value, $Res Function(_FeesHistory) _then)
      : super(_value, (v) => _then(v as _FeesHistory));

  @override
  _FeesHistory get _value => super._value as _FeesHistory;

  @override
  $Res call({
    Object? month = freezed,
    Object? amount = freezed,
    Object? date = freezed,
    Object? mode = freezed,
    Object? feetype = freezed,
    Object? payamount = freezed,
  }) {
    return _then(_FeesHistory(
      month: month == freezed
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as String?,
      feetype: feetype == freezed
          ? _value.feetype
          : feetype // ignore: cast_nullable_to_non_nullable
              as String?,
      payamount: payamount == freezed
          ? _value.payamount
          : payamount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeesHistory implements _FeesHistory {
  const _$_FeesHistory(
      {required this.month,
      required this.amount,
      this.date,
      this.mode,
      this.feetype,
      this.payamount});

  factory _$_FeesHistory.fromJson(Map<String, dynamic> json) =>
      _$$_FeesHistoryFromJson(json);

  @override
  final String month;
  @override
  final int amount;
  @override
  final String? date;
  @override
  final String? mode;
  @override
  final String? feetype;
  @override
  final int? payamount;

  @override
  String toString() {
    return 'FeesHistory(month: $month, amount: $amount, date: $date, mode: $mode, feetype: $feetype, payamount: $payamount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FeesHistory &&
            const DeepCollectionEquality().equals(other.month, month) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.mode, mode) &&
            const DeepCollectionEquality().equals(other.feetype, feetype) &&
            const DeepCollectionEquality().equals(other.payamount, payamount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(month),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(mode),
      const DeepCollectionEquality().hash(feetype),
      const DeepCollectionEquality().hash(payamount));

  @JsonKey(ignore: true)
  @override
  _$FeesHistoryCopyWith<_FeesHistory> get copyWith =>
      __$FeesHistoryCopyWithImpl<_FeesHistory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeesHistoryToJson(this);
  }
}

abstract class _FeesHistory implements FeesHistory {
  const factory _FeesHistory(
      {required String month,
      required int amount,
      String? date,
      String? mode,
      String? feetype,
      int? payamount}) = _$_FeesHistory;

  factory _FeesHistory.fromJson(Map<String, dynamic> json) =
      _$_FeesHistory.fromJson;

  @override
  String get month;
  @override
  int get amount;
  @override
  String? get date;
  @override
  String? get mode;
  @override
  String? get feetype;
  @override
  int? get payamount;
  @override
  @JsonKey(ignore: true)
  _$FeesHistoryCopyWith<_FeesHistory> get copyWith =>
      throw _privateConstructorUsedError;
}
