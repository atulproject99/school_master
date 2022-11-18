// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'leave_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LeaveData _$LeaveDataFromJson(Map<String, dynamic> json) {
  return _LeaveData.fromJson(json);
}

/// @nodoc
class _$LeaveDataTearOff {
  const _$LeaveDataTearOff();

  _LeaveData call(
      {required int id,
      required int studentid,
      @JsonKey(name: "class") String? studentCSlass,
      @JsonKey(name: "request_date") String? reqestDate,
      @JsonKey(name: "from_date") required String fromDate,
      @JsonKey(name: "to_date") String? toDate,
      int? status,
      String? reasone}) {
    return _LeaveData(
      id: id,
      studentid: studentid,
      studentCSlass: studentCSlass,
      reqestDate: reqestDate,
      fromDate: fromDate,
      toDate: toDate,
      status: status,
      reasone: reasone,
    );
  }

  LeaveData fromJson(Map<String, Object?> json) {
    return LeaveData.fromJson(json);
  }
}

/// @nodoc
const $LeaveData = _$LeaveDataTearOff();

/// @nodoc
mixin _$LeaveData {
  int get id => throw _privateConstructorUsedError;
  int get studentid => throw _privateConstructorUsedError;
  @JsonKey(name: "class")
  String? get studentCSlass => throw _privateConstructorUsedError;
  @JsonKey(name: "request_date")
  String? get reqestDate => throw _privateConstructorUsedError;
  @JsonKey(name: "from_date")
  String get fromDate => throw _privateConstructorUsedError;
  @JsonKey(name: "to_date")
  String? get toDate => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  String? get reasone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeaveDataCopyWith<LeaveData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaveDataCopyWith<$Res> {
  factory $LeaveDataCopyWith(LeaveData value, $Res Function(LeaveData) then) =
      _$LeaveDataCopyWithImpl<$Res>;
  $Res call(
      {int id,
      int studentid,
      @JsonKey(name: "class") String? studentCSlass,
      @JsonKey(name: "request_date") String? reqestDate,
      @JsonKey(name: "from_date") String fromDate,
      @JsonKey(name: "to_date") String? toDate,
      int? status,
      String? reasone});
}

/// @nodoc
class _$LeaveDataCopyWithImpl<$Res> implements $LeaveDataCopyWith<$Res> {
  _$LeaveDataCopyWithImpl(this._value, this._then);

  final LeaveData _value;
  // ignore: unused_field
  final $Res Function(LeaveData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? studentid = freezed,
    Object? studentCSlass = freezed,
    Object? reqestDate = freezed,
    Object? fromDate = freezed,
    Object? toDate = freezed,
    Object? status = freezed,
    Object? reasone = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      studentid: studentid == freezed
          ? _value.studentid
          : studentid // ignore: cast_nullable_to_non_nullable
              as int,
      studentCSlass: studentCSlass == freezed
          ? _value.studentCSlass
          : studentCSlass // ignore: cast_nullable_to_non_nullable
              as String?,
      reqestDate: reqestDate == freezed
          ? _value.reqestDate
          : reqestDate // ignore: cast_nullable_to_non_nullable
              as String?,
      fromDate: fromDate == freezed
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String,
      toDate: toDate == freezed
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      reasone: reasone == freezed
          ? _value.reasone
          : reasone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LeaveDataCopyWith<$Res> implements $LeaveDataCopyWith<$Res> {
  factory _$LeaveDataCopyWith(
          _LeaveData value, $Res Function(_LeaveData) then) =
      __$LeaveDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      int studentid,
      @JsonKey(name: "class") String? studentCSlass,
      @JsonKey(name: "request_date") String? reqestDate,
      @JsonKey(name: "from_date") String fromDate,
      @JsonKey(name: "to_date") String? toDate,
      int? status,
      String? reasone});
}

/// @nodoc
class __$LeaveDataCopyWithImpl<$Res> extends _$LeaveDataCopyWithImpl<$Res>
    implements _$LeaveDataCopyWith<$Res> {
  __$LeaveDataCopyWithImpl(_LeaveData _value, $Res Function(_LeaveData) _then)
      : super(_value, (v) => _then(v as _LeaveData));

  @override
  _LeaveData get _value => super._value as _LeaveData;

  @override
  $Res call({
    Object? id = freezed,
    Object? studentid = freezed,
    Object? studentCSlass = freezed,
    Object? reqestDate = freezed,
    Object? fromDate = freezed,
    Object? toDate = freezed,
    Object? status = freezed,
    Object? reasone = freezed,
  }) {
    return _then(_LeaveData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      studentid: studentid == freezed
          ? _value.studentid
          : studentid // ignore: cast_nullable_to_non_nullable
              as int,
      studentCSlass: studentCSlass == freezed
          ? _value.studentCSlass
          : studentCSlass // ignore: cast_nullable_to_non_nullable
              as String?,
      reqestDate: reqestDate == freezed
          ? _value.reqestDate
          : reqestDate // ignore: cast_nullable_to_non_nullable
              as String?,
      fromDate: fromDate == freezed
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String,
      toDate: toDate == freezed
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      reasone: reasone == freezed
          ? _value.reasone
          : reasone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LeaveData implements _LeaveData {
  const _$_LeaveData(
      {required this.id,
      required this.studentid,
      @JsonKey(name: "class") this.studentCSlass,
      @JsonKey(name: "request_date") this.reqestDate,
      @JsonKey(name: "from_date") required this.fromDate,
      @JsonKey(name: "to_date") this.toDate,
      this.status,
      this.reasone});

  factory _$_LeaveData.fromJson(Map<String, dynamic> json) =>
      _$$_LeaveDataFromJson(json);

  @override
  final int id;
  @override
  final int studentid;
  @override
  @JsonKey(name: "class")
  final String? studentCSlass;
  @override
  @JsonKey(name: "request_date")
  final String? reqestDate;
  @override
  @JsonKey(name: "from_date")
  final String fromDate;
  @override
  @JsonKey(name: "to_date")
  final String? toDate;
  @override
  final int? status;
  @override
  final String? reasone;

  @override
  String toString() {
    return 'LeaveData(id: $id, studentid: $studentid, studentCSlass: $studentCSlass, reqestDate: $reqestDate, fromDate: $fromDate, toDate: $toDate, status: $status, reasone: $reasone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LeaveData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.studentid, studentid) &&
            const DeepCollectionEquality()
                .equals(other.studentCSlass, studentCSlass) &&
            const DeepCollectionEquality()
                .equals(other.reqestDate, reqestDate) &&
            const DeepCollectionEquality().equals(other.fromDate, fromDate) &&
            const DeepCollectionEquality().equals(other.toDate, toDate) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.reasone, reasone));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(studentid),
      const DeepCollectionEquality().hash(studentCSlass),
      const DeepCollectionEquality().hash(reqestDate),
      const DeepCollectionEquality().hash(fromDate),
      const DeepCollectionEquality().hash(toDate),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(reasone));

  @JsonKey(ignore: true)
  @override
  _$LeaveDataCopyWith<_LeaveData> get copyWith =>
      __$LeaveDataCopyWithImpl<_LeaveData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LeaveDataToJson(this);
  }
}

abstract class _LeaveData implements LeaveData {
  const factory _LeaveData(
      {required int id,
      required int studentid,
      @JsonKey(name: "class") String? studentCSlass,
      @JsonKey(name: "request_date") String? reqestDate,
      @JsonKey(name: "from_date") required String fromDate,
      @JsonKey(name: "to_date") String? toDate,
      int? status,
      String? reasone}) = _$_LeaveData;

  factory _LeaveData.fromJson(Map<String, dynamic> json) =
      _$_LeaveData.fromJson;

  @override
  int get id;
  @override
  int get studentid;
  @override
  @JsonKey(name: "class")
  String? get studentCSlass;
  @override
  @JsonKey(name: "request_date")
  String? get reqestDate;
  @override
  @JsonKey(name: "from_date")
  String get fromDate;
  @override
  @JsonKey(name: "to_date")
  String? get toDate;
  @override
  int? get status;
  @override
  String? get reasone;
  @override
  @JsonKey(ignore: true)
  _$LeaveDataCopyWith<_LeaveData> get copyWith =>
      throw _privateConstructorUsedError;
}
