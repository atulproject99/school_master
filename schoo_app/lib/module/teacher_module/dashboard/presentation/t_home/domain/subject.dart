// To parse this JSON data, do
//
//     final subject = subjectFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'subject.freezed.dart';
part 'subject.g.dart';

Subject subjectFromJson(String str) => Subject.fromJson(json.decode(str));

String subjectToJson(Subject data) => json.encode(data.toJson());

@freezed
abstract class Subject with _$Subject {
  const factory Subject({
    required int id,
    @JsonKey(name: "school_id") int? schoolId,
    @JsonKey(name: "branch_id") int? branchId,
    @JsonKey(name: "class_id") int? classId,
    @JsonKey(name: "subject_name") String? subjectName,
    dynamic? description,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
  }) = _Subject;

  factory Subject.fromJson(Map<String, dynamic> json) =>
      _$SubjectFromJson(json);
}
