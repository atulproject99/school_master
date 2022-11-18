// To parse this JSON data, do
//
//     final studyMaterial = studyMaterialFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'study_material.freezed.dart';
part 'study_material.g.dart';

StudyMaterial studyMaterialFromJson(String str) =>
    StudyMaterial.fromJson(json.decode(str));

String studyMaterialToJson(StudyMaterial data) => json.encode(data.toJson());

@freezed
abstract class StudyMaterial with _$StudyMaterial {
  const factory StudyMaterial({
    required int id,
    @JsonKey(name: "class") String? studyMaterialClass,
    String? subject,
    String? studymaterial,
    String? date,
  }) = _StudyMaterial;

  factory StudyMaterial.fromJson(Map<String, dynamic> json) =>
      _$StudyMaterialFromJson(json);
}
