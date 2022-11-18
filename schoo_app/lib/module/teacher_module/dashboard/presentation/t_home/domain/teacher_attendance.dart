// To parse this JSON data, do
//
//     final teacherAttendance = teacherAttendanceFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'teacher_attendance.freezed.dart';
part 'teacher_attendance.g.dart';

TeacherAttendance teacherAttendanceFromJson(String str) =>
    TeacherAttendance.fromJson(json.decode(str));

String teacherAttendanceToJson(TeacherAttendance data) =>
    json.encode(data.toJson());

@freezed
abstract class TeacherAttendance with _$TeacherAttendance {
  const factory TeacherAttendance({
    DateTime? date,
    String? status,
    String? holiday,
    String? late,
  }) = _TeacherAttendance;

  factory TeacherAttendance.fromJson(Map<String, dynamic> json) =>
      _$TeacherAttendanceFromJson(json);
}
