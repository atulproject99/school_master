// To parse this JSON data, do
//
//     final complain = complainFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';
part 'complain.freezed.dart';

part 'complain.g.dart';

Complain complainFromJson(String str) => Complain.fromJson(json.decode(str));

String complainToJson(Complain data) => json.encode(data.toJson());

@freezed
abstract class Complain with _$Complain {
  const factory Complain({
    @JsonKey(name: "compaintid") required int complaintid,
    required String complaintdate,
    String? complaint,
    String? complaintby,
    String? parentsresponse,
  }) = _Complain;

  factory Complain.fromJson(Map<String, dynamic> json) =>
      _$ComplainFromJson(json);
}
