// To parse this JSON data, do
//
//     final attendanceStudent = attendanceStudentFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'attendence_student.g.dart';
part 'attendence_student.freezed.dart';

AttendanceStudent attendanceStudentFromJson(String str) =>
    AttendanceStudent.fromJson(json.decode(str));

String attendanceStudentToJson(AttendanceStudent data) =>
    json.encode(data.toJson());

@freezed
abstract class AttendanceStudent with _$AttendanceStudent {
  const factory AttendanceStudent({
    required int id,
    @JsonKey(name: "sch_no") int? schNo,
    @JsonKey(name: "registration_no") int? registrationNo,
    String? studentname,
    @JsonKey(name: "mobile_no") int? mobileNo,
    @JsonKey(name: "father_name") String? fatherName,
    @JsonKey(name: "attendance_status") String? attendanceStatus,
  }) = _AttendanceStudent;

  factory AttendanceStudent.fromJson(Map<String, dynamic> json) =>
      _$AttendanceStudentFromJson(json);
}
