// To parse this JSON data, do
//
//     final tStudent = tStudentFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 't_student.freezed.dart';
part 't_student.g.dart';

TStudent tStudentFromJson(String str) => TStudent.fromJson(json.decode(str));

String tStudentToJson(TStudent data) => json.encode(data.toJson());

@freezed
abstract class TStudent with _$TStudent {
  const factory TStudent({
    required int id,
    String? studentname,
    @JsonKey(name: "class") String? tStudentClass,
    String? section,
    String? stream,
    String? fathername,
    @JsonKey(name: "mobile_no") int? mobileNo,
  }) = _TStudent;

  factory TStudent.fromJson(Map<String, dynamic> json) =>
      _$TStudentFromJson(json);
}
