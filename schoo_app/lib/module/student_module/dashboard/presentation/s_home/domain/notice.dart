// To parse this JSON data, do
//
//     final notice = noticeFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';
part 'notice.freezed.dart';
part 'notice.g.dart';

Notice noticeFromJson(String str) => Notice.fromJson(json.decode(str));

String noticeToJson(Notice data) => json.encode(data.toJson());

@freezed
abstract class Notice with _$Notice {
  const factory Notice({
    required int id,
    @JsonKey(name: "school_id") int? schoolId,
    @JsonKey(name: "branch_id") int? branchId,
    @JsonKey(name: "student_id") int? studentId,
    @JsonKey(name: "class_id") int? classId,
    String? session,
    @JsonKey(name: "notice_date") DateTime? noticeDate,
    @JsonKey(name: "notice_heading") String? noticeHeading,
    @JsonKey(name: "notice_details") String? noticeDetails,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
  }) = _Notice;

  factory Notice.fromJson(Map<String, dynamic> json) => _$NoticeFromJson(json);
}
