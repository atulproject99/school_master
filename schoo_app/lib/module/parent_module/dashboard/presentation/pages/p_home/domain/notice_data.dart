// To parse this JSON data, do
//
//     final noticeData = noticeDataFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'notice_data.freezed.dart';
part 'notice_data.g.dart';

NoticeData noticeDataFromJson(String str) =>
    NoticeData.fromJson(json.decode(str));

String noticeDataToJson(NoticeData data) => json.encode(data.toJson());

@freezed
abstract class NoticeData with _$NoticeData {
  const factory NoticeData({
    required int id,
    required String session,
    @JsonKey(name: "notice_date") required DateTime noticeDate,
    @JsonKey(name: "notice_heading") required String noticeHeading,
    @JsonKey(name: "notice_details") required String noticeDetails,
  }) = _NoticeData;

  factory NoticeData.fromJson(Map<String, dynamic> json) =>
      _$NoticeDataFromJson(json);
}
