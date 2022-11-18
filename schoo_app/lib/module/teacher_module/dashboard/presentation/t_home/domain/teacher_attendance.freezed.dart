// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'teacher_attendance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TeacherAttendance _$TeacherAttendanceFromJson(Map<String, dynamic> json) {
  return _TeacherAttendance.fromJson(json);
}

/// @nodoc
class _$TeacherAttendanceTearOff {
  const _$TeacherAttendanceTearOff();

  _TeacherAttendance call(
      {DateTime? date, String? status, String? holiday, String? late}) {
    return _TeacherAttendance(
      date: date,
      status: status,
      holiday: holiday,
      late: late,
    );
  }

  TeacherAttendance fromJson(Map<String, Object?> json) {
    return TeacherAttendance.fromJson(json);
  }
}

/// @nodoc
const $TeacherAttendance = _$TeacherAttendanceTearOff();

/// @nodoc
mixin _$TeacherAttendance {
  DateTime? get date => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get holiday => throw _privateConstructorUsedError;
  String? get late => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeacherAttendanceCopyWith<TeacherAttendance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherAttendanceCopyWith<$Res> {
  factory $TeacherAttendanceCopyWith(
          TeacherAttendance value, $Res Function(TeacherAttendance) then) =
      _$TeacherAttendanceCopyWithImpl<$Res>;
  $Res call({DateTime? date, String? status, String? holiday, String? late});
}

/// @nodoc
class _$TeacherAttendanceCopyWithImpl<$Res>
    implements $TeacherAttendanceCopyWith<$Res> {
  _$TeacherAttendanceCopyWithImpl(this._value, this._then);

  final TeacherAttendance _value;
  // ignore: unused_field
  final $Res Function(TeacherAttendance) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? status = freezed,
    Object? holiday = freezed,
    Object? late = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      holiday: holiday == freezed
          ? _value.holiday
          : holiday // ignore: cast_nullable_to_non_nullable
              as String?,
      late: late == freezed
          ? _value.late
          : late // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$TeacherAttendanceCopyWith<$Res>
    implements $TeacherAttendanceCopyWith<$Res> {
  factory _$TeacherAttendanceCopyWith(
          _TeacherAttendance value, $Res Function(_TeacherAttendance) then) =
      __$TeacherAttendanceCopyWithImpl<$Res>;
  @override
  $Res call({DateTime? date, String? status, String? holiday, String? late});
}

/// @nodoc
class __$TeacherAttendanceCopyWithImpl<$Res>
    extends _$TeacherAttendanceCopyWithImpl<$Res>
    implements _$TeacherAttendanceCopyWith<$Res> {
  __$TeacherAttendanceCopyWithImpl(
      _TeacherAttendance _value, $Res Function(_TeacherAttendance) _then)
      : super(_value, (v) => _then(v as _TeacherAttendance));

  @override
  _TeacherAttendance get _value => super._value as _TeacherAttendance;

  @override
  $Res call({
    Object? date = freezed,
    Object? status = freezed,
    Object? holiday = freezed,
    Object? late = freezed,
  }) {
    return _then(_TeacherAttendance(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      holiday: holiday == freezed
          ? _value.holiday
          : holiday // ignore: cast_nullable_to_non_nullable
              as String?,
      late: late == freezed
          ? _value.late
          : late // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TeacherAttendance implements _TeacherAttendance {
  const _$_TeacherAttendance({this.date, this.status, this.holiday, this.late});

  factory _$_TeacherAttendance.fromJson(Map<String, dynamic> json) =>
      _$$_TeacherAttendanceFromJson(json);

  @override
  final DateTime? date;
  @override
  final String? status;
  @override
  final String? holiday;
  @override
  final String? late;

  @override
  String toString() {
    return 'TeacherAttendance(date: $date, status: $status, holiday: $holiday, late: $late)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TeacherAttendance &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.holiday, holiday) &&
            const DeepCollectionEquality().equals(other.late, late));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(holiday),
      const DeepCollectionEquality().hash(late));

  @JsonKey(ignore: true)
  @override
  _$TeacherAttendanceCopyWith<_TeacherAttendance> get copyWith =>
      __$TeacherAttendanceCopyWithImpl<_TeacherAttendance>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TeacherAttendanceToJson(this);
  }
}

abstract class _TeacherAttendance implements TeacherAttendance {
  const factory _TeacherAttendance(
      {DateTime? date,
      String? status,
      String? holiday,
      String? late}) = _$_TeacherAttendance;

  factory _TeacherAttendance.fromJson(Map<String, dynamic> json) =
      _$_TeacherAttendance.fromJson;

  @override
  DateTime? get date;
  @override
  String? get status;
  @override
  String? get holiday;
  @override
  String? get late;
  @override
  @JsonKey(ignore: true)
  _$TeacherAttendanceCopyWith<_TeacherAttendance> get copyWith =>
      throw _privateConstructorUsedError;
}
