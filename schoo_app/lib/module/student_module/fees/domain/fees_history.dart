// To parse this JSON data, do
//
//     final FeesHistory = FeesHistoryFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';
part 'fees_history.freezed.dart';
part 'fees_history.g.dart';

FeesHistory FeesHistoryFromJson(String str) =>
    FeesHistory.fromJson(json.decode(str));

String FeesHistoryToJson(FeesHistory data) => json.encode(data.toJson());

@freezed
abstract class FeesHistory with _$FeesHistory {
  const factory FeesHistory(
      {required String month,
      required int amount,
      String? date,
      String? mode,
      String? feetype,
      int? payamount}) = _FeesHistory;

  factory FeesHistory.fromJson(Map<String, dynamic> json) =>
      _$FeesHistoryFromJson(json);
}
