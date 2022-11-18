// To parse this JSON data, do
//
//     final transportAmount = transportAmountFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'transport_amount.freezed.dart';
part 'transport_amount.g.dart';

TransportAmount transportAmountFromJson(String str) =>
    TransportAmount.fromJson(json.decode(str));

String transportAmountToJson(TransportAmount data) =>
    json.encode(data.toJson());

@freezed
abstract class TransportAmount with _$TransportAmount {
  const factory TransportAmount({
    required String student,
    @JsonKey(name: "class") String? studentClass,
    @JsonKey(name: "apllied_for_transport") String? aplliedForTransport,
    @JsonKey(name: "transport_fee") int? transportFee,
    List<String>? monthname,
    List<int>? monthid,
    List<String>? feestatus,
    int? lastdue,
  }) = _TransportAmount;

  factory TransportAmount.fromJson(Map<String, dynamic> json) =>
      _$TransportAmountFromJson(json);
}
