// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendence_student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AttendanceStudent _$$_AttendanceStudentFromJson(Map<String, dynamic> json) =>
    _$_AttendanceStudent(
      id: json['id'] as int,
      schNo: json['sch_no'] as int?,
      registrationNo: json['registration_no'] as int?,
      studentname: json['studentname'] as String?,
      mobileNo: json['mobile_no'] as int?,
      fatherName: json['father_name'] as String?,
      attendanceStatus: json['attendance_status'] as String?,
    );

Map<String, dynamic> _$$_AttendanceStudentToJson(
        _$_AttendanceStudent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sch_no': instance.schNo,
      'registration_no': instance.registrationNo,
      'studentname': instance.studentname,
      'mobile_no': instance.mobileNo,
      'father_name': instance.fatherName,
      'attendance_status': instance.attendanceStatus,
    };
