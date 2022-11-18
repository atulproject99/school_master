// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'attendence_student.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AttendanceStudent _$AttendanceStudentFromJson(Map<String, dynamic> json) {
  return _AttendanceStudent.fromJson(json);
}

/// @nodoc
class _$AttendanceStudentTearOff {
  const _$AttendanceStudentTearOff();

  _AttendanceStudent call(
      {required int id,
      @JsonKey(name: "sch_no") int? schNo,
      @JsonKey(name: "registration_no") int? registrationNo,
      String? studentname,
      @JsonKey(name: "mobile_no") int? mobileNo,
      @JsonKey(name: "father_name") String? fatherName,
      @JsonKey(name: "attendance_status") String? attendanceStatus}) {
    return _AttendanceStudent(
      id: id,
      schNo: schNo,
      registrationNo: registrationNo,
      studentname: studentname,
      mobileNo: mobileNo,
      fatherName: fatherName,
      attendanceStatus: attendanceStatus,
    );
  }

  AttendanceStudent fromJson(Map<String, Object?> json) {
    return AttendanceStudent.fromJson(json);
  }
}

/// @nodoc
const $AttendanceStudent = _$AttendanceStudentTearOff();

/// @nodoc
mixin _$AttendanceStudent {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "sch_no")
  int? get schNo => throw _privateConstructorUsedError;
  @JsonKey(name: "registration_no")
  int? get registrationNo => throw _privateConstructorUsedError;
  String? get studentname => throw _privateConstructorUsedError;
  @JsonKey(name: "mobile_no")
  int? get mobileNo => throw _privateConstructorUsedError;
  @JsonKey(name: "father_name")
  String? get fatherName => throw _privateConstructorUsedError;
  @JsonKey(name: "attendance_status")
  String? get attendanceStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceStudentCopyWith<AttendanceStudent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceStudentCopyWith<$Res> {
  factory $AttendanceStudentCopyWith(
          AttendanceStudent value, $Res Function(AttendanceStudent) then) =
      _$AttendanceStudentCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: "sch_no") int? schNo,
      @JsonKey(name: "registration_no") int? registrationNo,
      String? studentname,
      @JsonKey(name: "mobile_no") int? mobileNo,
      @JsonKey(name: "father_name") String? fatherName,
      @JsonKey(name: "attendance_status") String? attendanceStatus});
}

/// @nodoc
class _$AttendanceStudentCopyWithImpl<$Res>
    implements $AttendanceStudentCopyWith<$Res> {
  _$AttendanceStudentCopyWithImpl(this._value, this._then);

  final AttendanceStudent _value;
  // ignore: unused_field
  final $Res Function(AttendanceStudent) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? schNo = freezed,
    Object? registrationNo = freezed,
    Object? studentname = freezed,
    Object? mobileNo = freezed,
    Object? fatherName = freezed,
    Object? attendanceStatus = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      schNo: schNo == freezed
          ? _value.schNo
          : schNo // ignore: cast_nullable_to_non_nullable
              as int?,
      registrationNo: registrationNo == freezed
          ? _value.registrationNo
          : registrationNo // ignore: cast_nullable_to_non_nullable
              as int?,
      studentname: studentname == freezed
          ? _value.studentname
          : studentname // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNo: mobileNo == freezed
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as int?,
      fatherName: fatherName == freezed
          ? _value.fatherName
          : fatherName // ignore: cast_nullable_to_non_nullable
              as String?,
      attendanceStatus: attendanceStatus == freezed
          ? _value.attendanceStatus
          : attendanceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AttendanceStudentCopyWith<$Res>
    implements $AttendanceStudentCopyWith<$Res> {
  factory _$AttendanceStudentCopyWith(
          _AttendanceStudent value, $Res Function(_AttendanceStudent) then) =
      __$AttendanceStudentCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: "sch_no") int? schNo,
      @JsonKey(name: "registration_no") int? registrationNo,
      String? studentname,
      @JsonKey(name: "mobile_no") int? mobileNo,
      @JsonKey(name: "father_name") String? fatherName,
      @JsonKey(name: "attendance_status") String? attendanceStatus});
}

/// @nodoc
class __$AttendanceStudentCopyWithImpl<$Res>
    extends _$AttendanceStudentCopyWithImpl<$Res>
    implements _$AttendanceStudentCopyWith<$Res> {
  __$AttendanceStudentCopyWithImpl(
      _AttendanceStudent _value, $Res Function(_AttendanceStudent) _then)
      : super(_value, (v) => _then(v as _AttendanceStudent));

  @override
  _AttendanceStudent get _value => super._value as _AttendanceStudent;

  @override
  $Res call({
    Object? id = freezed,
    Object? schNo = freezed,
    Object? registrationNo = freezed,
    Object? studentname = freezed,
    Object? mobileNo = freezed,
    Object? fatherName = freezed,
    Object? attendanceStatus = freezed,
  }) {
    return _then(_AttendanceStudent(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      schNo: schNo == freezed
          ? _value.schNo
          : schNo // ignore: cast_nullable_to_non_nullable
              as int?,
      registrationNo: registrationNo == freezed
          ? _value.registrationNo
          : registrationNo // ignore: cast_nullable_to_non_nullable
              as int?,
      studentname: studentname == freezed
          ? _value.studentname
          : studentname // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNo: mobileNo == freezed
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as int?,
      fatherName: fatherName == freezed
          ? _value.fatherName
          : fatherName // ignore: cast_nullable_to_non_nullable
              as String?,
      attendanceStatus: attendanceStatus == freezed
          ? _value.attendanceStatus
          : attendanceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AttendanceStudent implements _AttendanceStudent {
  const _$_AttendanceStudent(
      {required this.id,
      @JsonKey(name: "sch_no") this.schNo,
      @JsonKey(name: "registration_no") this.registrationNo,
      this.studentname,
      @JsonKey(name: "mobile_no") this.mobileNo,
      @JsonKey(name: "father_name") this.fatherName,
      @JsonKey(name: "attendance_status") this.attendanceStatus});

  factory _$_AttendanceStudent.fromJson(Map<String, dynamic> json) =>
      _$$_AttendanceStudentFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "sch_no")
  final int? schNo;
  @override
  @JsonKey(name: "registration_no")
  final int? registrationNo;
  @override
  final String? studentname;
  @override
  @JsonKey(name: "mobile_no")
  final int? mobileNo;
  @override
  @JsonKey(name: "father_name")
  final String? fatherName;
  @override
  @JsonKey(name: "attendance_status")
  final String? attendanceStatus;

  @override
  String toString() {
    return 'AttendanceStudent(id: $id, schNo: $schNo, registrationNo: $registrationNo, studentname: $studentname, mobileNo: $mobileNo, fatherName: $fatherName, attendanceStatus: $attendanceStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AttendanceStudent &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.schNo, schNo) &&
            const DeepCollectionEquality()
                .equals(other.registrationNo, registrationNo) &&
            const DeepCollectionEquality()
                .equals(other.studentname, studentname) &&
            const DeepCollectionEquality().equals(other.mobileNo, mobileNo) &&
            const DeepCollectionEquality()
                .equals(other.fatherName, fatherName) &&
            const DeepCollectionEquality()
                .equals(other.attendanceStatus, attendanceStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(schNo),
      const DeepCollectionEquality().hash(registrationNo),
      const DeepCollectionEquality().hash(studentname),
      const DeepCollectionEquality().hash(mobileNo),
      const DeepCollectionEquality().hash(fatherName),
      const DeepCollectionEquality().hash(attendanceStatus));

  @JsonKey(ignore: true)
  @override
  _$AttendanceStudentCopyWith<_AttendanceStudent> get copyWith =>
      __$AttendanceStudentCopyWithImpl<_AttendanceStudent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttendanceStudentToJson(this);
  }
}

abstract class _AttendanceStudent implements AttendanceStudent {
  const factory _AttendanceStudent(
          {required int id,
          @JsonKey(name: "sch_no") int? schNo,
          @JsonKey(name: "registration_no") int? registrationNo,
          String? studentname,
          @JsonKey(name: "mobile_no") int? mobileNo,
          @JsonKey(name: "father_name") String? fatherName,
          @JsonKey(name: "attendance_status") String? attendanceStatus}) =
      _$_AttendanceStudent;

  factory _AttendanceStudent.fromJson(Map<String, dynamic> json) =
      _$_AttendanceStudent.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "sch_no")
  int? get schNo;
  @override
  @JsonKey(name: "registration_no")
  int? get registrationNo;
  @override
  String? get studentname;
  @override
  @JsonKey(name: "mobile_no")
  int? get mobileNo;
  @override
  @JsonKey(name: "father_name")
  String? get fatherName;
  @override
  @JsonKey(name: "attendance_status")
  String? get attendanceStatus;
  @override
  @JsonKey(ignore: true)
  _$AttendanceStudentCopyWith<_AttendanceStudent> get copyWith =>
      throw _privateConstructorUsedError;
}
