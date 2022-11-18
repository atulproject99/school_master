// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'attendence.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Attendance _$AttendanceFromJson(Map<String, dynamic> json) {
  return _Attendance.fromJson(json);
}

/// @nodoc
class _$AttendanceTearOff {
  const _$AttendanceTearOff();

  _Attendance call(
      {required int id,
      String? type,
      String? session,
      @JsonKey(name: "school_id") int? schoolId,
      @JsonKey(name: "branch_id") int? branchId,
      @JsonKey(name: "class_id") int? classId,
      @JsonKey(name: "student_id") int? studentId,
      @JsonKey(name: "staff_id") dynamic? staffId,
      @JsonKey(name: "role_id") int? roleId,
      String? role,
      @JsonKey(name: "attendance_Status") String? attendanceStatus,
      @JsonKey(name: "attendance_date") DateTime? attendanceDate,
      int? active,
      @JsonKey(name: "late_coming") String? lateComing,
      String? holiday,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt}) {
    return _Attendance(
      id: id,
      type: type,
      session: session,
      schoolId: schoolId,
      branchId: branchId,
      classId: classId,
      studentId: studentId,
      staffId: staffId,
      roleId: roleId,
      role: role,
      attendanceStatus: attendanceStatus,
      attendanceDate: attendanceDate,
      active: active,
      lateComing: lateComing,
      holiday: holiday,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  Attendance fromJson(Map<String, Object?> json) {
    return Attendance.fromJson(json);
  }
}

/// @nodoc
const $Attendance = _$AttendanceTearOff();

/// @nodoc
mixin _$Attendance {
  int get id => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get session => throw _privateConstructorUsedError;
  @JsonKey(name: "school_id")
  int? get schoolId => throw _privateConstructorUsedError;
  @JsonKey(name: "branch_id")
  int? get branchId => throw _privateConstructorUsedError;
  @JsonKey(name: "class_id")
  int? get classId => throw _privateConstructorUsedError;
  @JsonKey(name: "student_id")
  int? get studentId => throw _privateConstructorUsedError;
  @JsonKey(name: "staff_id")
  dynamic? get staffId => throw _privateConstructorUsedError;
  @JsonKey(name: "role_id")
  int? get roleId => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: "attendance_Status")
  String? get attendanceStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "attendance_date")
  DateTime? get attendanceDate => throw _privateConstructorUsedError;
  int? get active => throw _privateConstructorUsedError;
  @JsonKey(name: "late_coming")
  String? get lateComing => throw _privateConstructorUsedError;
  String? get holiday => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceCopyWith<Attendance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceCopyWith<$Res> {
  factory $AttendanceCopyWith(
          Attendance value, $Res Function(Attendance) then) =
      _$AttendanceCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String? type,
      String? session,
      @JsonKey(name: "school_id") int? schoolId,
      @JsonKey(name: "branch_id") int? branchId,
      @JsonKey(name: "class_id") int? classId,
      @JsonKey(name: "student_id") int? studentId,
      @JsonKey(name: "staff_id") dynamic? staffId,
      @JsonKey(name: "role_id") int? roleId,
      String? role,
      @JsonKey(name: "attendance_Status") String? attendanceStatus,
      @JsonKey(name: "attendance_date") DateTime? attendanceDate,
      int? active,
      @JsonKey(name: "late_coming") String? lateComing,
      String? holiday,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt});
}

/// @nodoc
class _$AttendanceCopyWithImpl<$Res> implements $AttendanceCopyWith<$Res> {
  _$AttendanceCopyWithImpl(this._value, this._then);

  final Attendance _value;
  // ignore: unused_field
  final $Res Function(Attendance) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? session = freezed,
    Object? schoolId = freezed,
    Object? branchId = freezed,
    Object? classId = freezed,
    Object? studentId = freezed,
    Object? staffId = freezed,
    Object? roleId = freezed,
    Object? role = freezed,
    Object? attendanceStatus = freezed,
    Object? attendanceDate = freezed,
    Object? active = freezed,
    Object? lateComing = freezed,
    Object? holiday = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      session: session == freezed
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolId: schoolId == freezed
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int?,
      branchId: branchId == freezed
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as int?,
      classId: classId == freezed
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as int?,
      studentId: studentId == freezed
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int?,
      staffId: staffId == freezed
          ? _value.staffId
          : staffId // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      roleId: roleId == freezed
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int?,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      attendanceStatus: attendanceStatus == freezed
          ? _value.attendanceStatus
          : attendanceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      attendanceDate: attendanceDate == freezed
          ? _value.attendanceDate
          : attendanceDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as int?,
      lateComing: lateComing == freezed
          ? _value.lateComing
          : lateComing // ignore: cast_nullable_to_non_nullable
              as String?,
      holiday: holiday == freezed
          ? _value.holiday
          : holiday // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$AttendanceCopyWith<$Res> implements $AttendanceCopyWith<$Res> {
  factory _$AttendanceCopyWith(
          _Attendance value, $Res Function(_Attendance) then) =
      __$AttendanceCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String? type,
      String? session,
      @JsonKey(name: "school_id") int? schoolId,
      @JsonKey(name: "branch_id") int? branchId,
      @JsonKey(name: "class_id") int? classId,
      @JsonKey(name: "student_id") int? studentId,
      @JsonKey(name: "staff_id") dynamic? staffId,
      @JsonKey(name: "role_id") int? roleId,
      String? role,
      @JsonKey(name: "attendance_Status") String? attendanceStatus,
      @JsonKey(name: "attendance_date") DateTime? attendanceDate,
      int? active,
      @JsonKey(name: "late_coming") String? lateComing,
      String? holiday,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt});
}

/// @nodoc
class __$AttendanceCopyWithImpl<$Res> extends _$AttendanceCopyWithImpl<$Res>
    implements _$AttendanceCopyWith<$Res> {
  __$AttendanceCopyWithImpl(
      _Attendance _value, $Res Function(_Attendance) _then)
      : super(_value, (v) => _then(v as _Attendance));

  @override
  _Attendance get _value => super._value as _Attendance;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? session = freezed,
    Object? schoolId = freezed,
    Object? branchId = freezed,
    Object? classId = freezed,
    Object? studentId = freezed,
    Object? staffId = freezed,
    Object? roleId = freezed,
    Object? role = freezed,
    Object? attendanceStatus = freezed,
    Object? attendanceDate = freezed,
    Object? active = freezed,
    Object? lateComing = freezed,
    Object? holiday = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_Attendance(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      session: session == freezed
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolId: schoolId == freezed
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int?,
      branchId: branchId == freezed
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as int?,
      classId: classId == freezed
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as int?,
      studentId: studentId == freezed
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int?,
      staffId: staffId == freezed
          ? _value.staffId
          : staffId // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      roleId: roleId == freezed
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int?,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      attendanceStatus: attendanceStatus == freezed
          ? _value.attendanceStatus
          : attendanceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      attendanceDate: attendanceDate == freezed
          ? _value.attendanceDate
          : attendanceDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as int?,
      lateComing: lateComing == freezed
          ? _value.lateComing
          : lateComing // ignore: cast_nullable_to_non_nullable
              as String?,
      holiday: holiday == freezed
          ? _value.holiday
          : holiday // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Attendance implements _Attendance {
  const _$_Attendance(
      {required this.id,
      this.type,
      this.session,
      @JsonKey(name: "school_id") this.schoolId,
      @JsonKey(name: "branch_id") this.branchId,
      @JsonKey(name: "class_id") this.classId,
      @JsonKey(name: "student_id") this.studentId,
      @JsonKey(name: "staff_id") this.staffId,
      @JsonKey(name: "role_id") this.roleId,
      this.role,
      @JsonKey(name: "attendance_Status") this.attendanceStatus,
      @JsonKey(name: "attendance_date") this.attendanceDate,
      this.active,
      @JsonKey(name: "late_coming") this.lateComing,
      this.holiday,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt});

  factory _$_Attendance.fromJson(Map<String, dynamic> json) =>
      _$$_AttendanceFromJson(json);

  @override
  final int id;
  @override
  final String? type;
  @override
  final String? session;
  @override
  @JsonKey(name: "school_id")
  final int? schoolId;
  @override
  @JsonKey(name: "branch_id")
  final int? branchId;
  @override
  @JsonKey(name: "class_id")
  final int? classId;
  @override
  @JsonKey(name: "student_id")
  final int? studentId;
  @override
  @JsonKey(name: "staff_id")
  final dynamic? staffId;
  @override
  @JsonKey(name: "role_id")
  final int? roleId;
  @override
  final String? role;
  @override
  @JsonKey(name: "attendance_Status")
  final String? attendanceStatus;
  @override
  @JsonKey(name: "attendance_date")
  final DateTime? attendanceDate;
  @override
  final int? active;
  @override
  @JsonKey(name: "late_coming")
  final String? lateComing;
  @override
  final String? holiday;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Attendance(id: $id, type: $type, session: $session, schoolId: $schoolId, branchId: $branchId, classId: $classId, studentId: $studentId, staffId: $staffId, roleId: $roleId, role: $role, attendanceStatus: $attendanceStatus, attendanceDate: $attendanceDate, active: $active, lateComing: $lateComing, holiday: $holiday, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Attendance &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.session, session) &&
            const DeepCollectionEquality().equals(other.schoolId, schoolId) &&
            const DeepCollectionEquality().equals(other.branchId, branchId) &&
            const DeepCollectionEquality().equals(other.classId, classId) &&
            const DeepCollectionEquality().equals(other.studentId, studentId) &&
            const DeepCollectionEquality().equals(other.staffId, staffId) &&
            const DeepCollectionEquality().equals(other.roleId, roleId) &&
            const DeepCollectionEquality().equals(other.role, role) &&
            const DeepCollectionEquality()
                .equals(other.attendanceStatus, attendanceStatus) &&
            const DeepCollectionEquality()
                .equals(other.attendanceDate, attendanceDate) &&
            const DeepCollectionEquality().equals(other.active, active) &&
            const DeepCollectionEquality()
                .equals(other.lateComing, lateComing) &&
            const DeepCollectionEquality().equals(other.holiday, holiday) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(session),
      const DeepCollectionEquality().hash(schoolId),
      const DeepCollectionEquality().hash(branchId),
      const DeepCollectionEquality().hash(classId),
      const DeepCollectionEquality().hash(studentId),
      const DeepCollectionEquality().hash(staffId),
      const DeepCollectionEquality().hash(roleId),
      const DeepCollectionEquality().hash(role),
      const DeepCollectionEquality().hash(attendanceStatus),
      const DeepCollectionEquality().hash(attendanceDate),
      const DeepCollectionEquality().hash(active),
      const DeepCollectionEquality().hash(lateComing),
      const DeepCollectionEquality().hash(holiday),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$AttendanceCopyWith<_Attendance> get copyWith =>
      __$AttendanceCopyWithImpl<_Attendance>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttendanceToJson(this);
  }
}

abstract class _Attendance implements Attendance {
  const factory _Attendance(
      {required int id,
      String? type,
      String? session,
      @JsonKey(name: "school_id") int? schoolId,
      @JsonKey(name: "branch_id") int? branchId,
      @JsonKey(name: "class_id") int? classId,
      @JsonKey(name: "student_id") int? studentId,
      @JsonKey(name: "staff_id") dynamic? staffId,
      @JsonKey(name: "role_id") int? roleId,
      String? role,
      @JsonKey(name: "attendance_Status") String? attendanceStatus,
      @JsonKey(name: "attendance_date") DateTime? attendanceDate,
      int? active,
      @JsonKey(name: "late_coming") String? lateComing,
      String? holiday,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt}) = _$_Attendance;

  factory _Attendance.fromJson(Map<String, dynamic> json) =
      _$_Attendance.fromJson;

  @override
  int get id;
  @override
  String? get type;
  @override
  String? get session;
  @override
  @JsonKey(name: "school_id")
  int? get schoolId;
  @override
  @JsonKey(name: "branch_id")
  int? get branchId;
  @override
  @JsonKey(name: "class_id")
  int? get classId;
  @override
  @JsonKey(name: "student_id")
  int? get studentId;
  @override
  @JsonKey(name: "staff_id")
  dynamic? get staffId;
  @override
  @JsonKey(name: "role_id")
  int? get roleId;
  @override
  String? get role;
  @override
  @JsonKey(name: "attendance_Status")
  String? get attendanceStatus;
  @override
  @JsonKey(name: "attendance_date")
  DateTime? get attendanceDate;
  @override
  int? get active;
  @override
  @JsonKey(name: "late_coming")
  String? get lateComing;
  @override
  String? get holiday;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$AttendanceCopyWith<_Attendance> get copyWith =>
      throw _privateConstructorUsedError;
}
