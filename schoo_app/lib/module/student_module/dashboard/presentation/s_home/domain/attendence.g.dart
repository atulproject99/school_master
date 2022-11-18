// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendence.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Attendance _$$_AttendanceFromJson(Map<String, dynamic> json) =>
    _$_Attendance(
      id: json['id'] as int,
      type: json['type'] as String?,
      session: json['session'] as String?,
      schoolId: json['school_id'] as int?,
      branchId: json['branch_id'] as int?,
      classId: json['class_id'] as int?,
      studentId: json['student_id'] as int?,
      staffId: json['staff_id'],
      roleId: json['role_id'] as int?,
      role: json['role'] as String?,
      attendanceStatus: json['attendance_Status'] as String?,
      attendanceDate: json['attendance_date'] == null
          ? null
          : DateTime.parse(json['attendance_date'] as String),
      active: json['active'] as int?,
      lateComing: json['late_coming'] as String?,
      holiday: json['holiday'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_AttendanceToJson(_$_Attendance instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'session': instance.session,
      'school_id': instance.schoolId,
      'branch_id': instance.branchId,
      'class_id': instance.classId,
      'student_id': instance.studentId,
      'staff_id': instance.staffId,
      'role_id': instance.roleId,
      'role': instance.role,
      'attendance_Status': instance.attendanceStatus,
      'attendance_date': instance.attendanceDate?.toIso8601String(),
      'active': instance.active,
      'late_coming': instance.lateComing,
      'holiday': instance.holiday,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
