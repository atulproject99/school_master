// To parse this JSON data, do
//
//     final basicDetails = basicDetailsFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'basic_details.freezed.dart';
part 'basic_details.g.dart';

BasicDetails basicDetailsFromJson(String str) =>
    BasicDetails.fromJson(json.decode(str));

String basicDetailsToJson(BasicDetails data) => json.encode(data.toJson());

@freezed
abstract class BasicDetails with _$BasicDetails {
  const factory BasicDetails({
    required int id,
    @JsonKey(name: "school_name") String? schoolName,
    @JsonKey(name: "school_code") String? schoolCode,
    @JsonKey(name: "afliation_no") String? afliationNo,
    @JsonKey(name: "mobile_no") int? mobileNo,
    @JsonKey(name: "phone_no") int? phoneNo,
    @JsonKey(name: "email_id") String? emailId,
    String? address,
    String? logo,
    @JsonKey(name: "upi_id") String? upiId,
    @JsonKey(name: "privacy_policy") String? privacyPolicy,
    String? about,
    @JsonKey(name: "auth_key") String? authKey,
    @JsonKey(name: "sender_id") String? senderId,
    @JsonKey(name: "enquiry_template_id") double? enquiryTemplateId,
    @JsonKey(name: "after_admission") double? afterAdmission,
    @JsonKey(name: "after_fee_submit") dynamic? afterFeeSubmit,
    @JsonKey(name: "fee_reminder") dynamic? feeReminder,
    @JsonKey(name: "holiday_template_id") double? holidayTemplateId,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
    @JsonKey(name: "contact_us") String? contactUs,
  }) = _BasicDetails;

  factory BasicDetails.fromJson(Map<String, dynamic> json) =>
      _$BasicDetailsFromJson(json);
}
