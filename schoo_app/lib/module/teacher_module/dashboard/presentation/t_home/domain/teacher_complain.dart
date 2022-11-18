// To parse this JSON data, do
//
//     final teacherComplain = teacherComplainFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'teacher_complain.freezed.dart';
part 'teacher_complain.g.dart';

TeacherComplain teacherComplainFromJson(String str) =>
    TeacherComplain.fromJson(json.decode(str));

String teacherComplainToJson(TeacherComplain data) =>
    json.encode(data.toJson());

@freezed
abstract class TeacherComplain with _$TeacherComplain {
  const factory TeacherComplain({
    String? complintsby,
    String? complaints,
    String? staffresponse,
    DateTime? date,
  }) = _TeacherComplain;

  factory TeacherComplain.fromJson(Map<String, dynamic> json) =>
      _$TeacherComplainFromJson(json);
}
