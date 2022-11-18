// To parse this JSON data, do
//
//     final schoolDetails = schoolDetailsFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'sechool_detail.freezed.dart';

part 'sechool_detail.g.dart';

SchoolDetails schoolDetailsFromJson(String str) =>
    SchoolDetails.fromJson(json.decode(str));

String schoolDetailsToJson(SchoolDetails data) => json.encode(data.toJson());

@freezed
abstract class SchoolDetails with _$SchoolDetails {
  const factory SchoolDetails(
      {@JsonKey(name: "branch_name") String? branchName,
      @JsonKey(name: "upi_id") String? upiKey,
      String? privacypolicy,
      String? about,
      String? logo,
      @JsonKey(name: "contact_us") String? contactUs}) = _SchoolDetails;

  factory SchoolDetails.fromJson(Map<String, dynamic> json) =>
      _$SchoolDetailsFromJson(json);
}
