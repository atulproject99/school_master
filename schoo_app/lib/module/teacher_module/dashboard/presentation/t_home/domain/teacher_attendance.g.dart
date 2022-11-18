// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_attendance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TeacherAttendance _$$_TeacherAttendanceFromJson(Map<String, dynamic> json) =>
    _$_TeacherAttendance(
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      status: json['status'] as String?,
      holiday: json['holiday'] as String?,
      late: json['late'] as String?,
    );

Map<String, dynamic> _$$_TeacherAttendanceToJson(
        _$_TeacherAttendance instance) =>
    <String, dynamic>{
      'date': instance.date?.toIso8601String(),
      'status': instance.status,
      'holiday': instance.holiday,
      'late': instance.late,
    };
