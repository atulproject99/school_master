// To parse this JSON data, do
//
//     final tStudentComplain = tStudentComplainFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'tstudent_complain.g.dart';
part 'tstudent_complain.freezed.dart';

TStudentComplain tStudentComplainFromJson(String str) =>
    TStudentComplain.fromJson(json.decode(str));

String tStudentComplainToJson(TStudentComplain data) =>
    json.encode(data.toJson());

@freezed
abstract class TStudentComplain with _$TStudentComplain {
  const factory TStudentComplain({
    @JsonKey(name: "student_id") required int studentId,
    String? session,
    @JsonKey(name: "student_name") String? studentName,
    @JsonKey(name: "class") String? tStudentComplainClass,
    @JsonKey(name: "complaint_by") String? complaintBy,
    String? complaint,
    @JsonKey(name: "parents_response") String? parentsResponse,
    @JsonKey(name: "date") String? complainDate,
    @JsonKey(name: "complaints_status") String? complaintsStatus,
  }) = _TStudentComplain;

  factory TStudentComplain.fromJson(Map<String, dynamic> json) =>
      _$TStudentComplainFromJson(json);
}
