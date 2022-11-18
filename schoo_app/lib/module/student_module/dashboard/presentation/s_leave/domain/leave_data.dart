import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';
part 'leave_data.freezed.dart';
part 'leave_data.g.dart';

LeaveData leaveDataFromJson(String str) => LeaveData.fromJson(json.decode(str));

String leaveDataToJson(LeaveData data) => json.encode(data.toJson());

@freezed
abstract class LeaveData with _$LeaveData {
  const factory LeaveData({
    required int id,
    required int studentid,
    @JsonKey(name: "class") String? studentCSlass,
    @JsonKey(name: "request_date") String? reqestDate,
    @JsonKey(name: "from_date") required String fromDate,
    @JsonKey(name: "to_date") String? toDate,
    int? status,
    String? reasone,
  }) = _LeaveData;

  factory LeaveData.fromJson(Map<String, dynamic> json) =>
      _$LeaveDataFromJson(json);
}
