// To parse this JSON data, do
//
//     final pStudent = pStudentFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'pstudent.freezed.dart';
part 'pstudent.g.dart';

PStudent pStudentFromJson(String str) => PStudent.fromJson(json.decode(str));

String pStudentToJson(PStudent data) => json.encode(data.toJson());

@freezed
abstract class PStudent with _$PStudent {
  const factory PStudent({
    @JsonKey(name: "id") int? studentid,
    required String student,
    @JsonKey(name: "class") required String pStudentClass,
    String? image,
    String? session,
    int? transportdueamount,
    int? tutiondueamount,
    String? nextfeedate,
  }) = _PStudent;

  factory PStudent.fromJson(Map<String, dynamic> json) =>
      _$PStudentFromJson(json);
}
