// To parse this JSON data, do
//
//     final StudentFees = StudentFeesFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'student_fees.freezed.dart';

part 'student_fees.g.dart';

StudentFees StudentFeesFromJson(String str) =>
    StudentFees.fromJson(json.decode(str));

String StudentFeesToJson(StudentFees data) => json.encode(data.toJson());

@freezed
abstract class StudentFees with _$StudentFees {
  const factory StudentFees({
    required String student,
    @JsonKey(name: "class") required String StudentFeesClass,
    List<String>? monthname,
    List<int>? monthid,
    List<int>? monthamount,
    List<String>? feestatus,
    int? fines,
    int? lastdue,
  }) = _StudentFees;

  factory StudentFees.fromJson(Map<String, dynamic> json) =>
      _$StudentFeesFromJson(json);
}
