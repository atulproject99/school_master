// To parse this JSON data, do
//
//     final classDetails = classDetailsFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'class_details.freezed.dart';
part 'class_details.g.dart';

ClassDetails classDetailsFromJson(String str) =>
    ClassDetails.fromJson(json.decode(str));

String classDetailsToJson(ClassDetails data) => json.encode(data.toJson());

@freezed
abstract class ClassDetails with _$ClassDetails {
  const factory ClassDetails({
    required int id,
    @JsonKey(name: "school_id") int? schoolId,
    @JsonKey(name: "branch_id") int? branchId,
    String? studentclass,
    String? description,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
  }) = _ClassDetails;

  factory ClassDetails.fromJson(Map<String, dynamic> json) =>
      _$ClassDetailsFromJson(json);
}
