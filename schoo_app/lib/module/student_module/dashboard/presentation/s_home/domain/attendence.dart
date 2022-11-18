// To parse this JSON data, do
//
//     final attendance = attendanceFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';
part 'attendence.g.dart';
part 'attendence.freezed.dart';

Attendance attendanceFromJson(String str) =>
    Attendance.fromJson(json.decode(str));

String attendanceToJson(Attendance data) => json.encode(data.toJson());

@freezed
abstract class Attendance with _$Attendance {
  const factory Attendance({
    required int id,
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
    @JsonKey(name: "updated_at") DateTime? updatedAt,
  }) = _Attendance;

  factory Attendance.fromJson(Map<String, dynamic> json) =>
      _$AttendanceFromJson(json);
}
