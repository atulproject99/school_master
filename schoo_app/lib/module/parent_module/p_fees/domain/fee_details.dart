// To parse this JSON data, do
//
//     final feeDetails = feeDetailsFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'fee_details.freezed.dart';
part 'fee_details.g.dart';

FeeDetails feeDetailsFromJson(String str) =>
    FeeDetails.fromJson(json.decode(str));

String feeDetailsToJson(FeeDetails data) => json.encode(data.toJson());

@freezed
abstract class FeeDetails with _$FeeDetails {
  const factory FeeDetails({
    required int monthId,
    required int feeamount,
  }) = _FeeDetails;

  factory FeeDetails.fromJson(Map<String, dynamic> json) =>
      _$FeeDetailsFromJson(json);
}
