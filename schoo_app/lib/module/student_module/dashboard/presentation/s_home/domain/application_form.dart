// To parse this JSON data, do
//
//     final applicationForm = applicationFormFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';
part 'application_form.freezed.dart';
part 'application_form.g.dart';

ApplicationForm applicationFormFromJson(String str) =>
    ApplicationForm.fromJson(json.decode(str));

String applicationFormToJson(ApplicationForm data) =>
    json.encode(data.toJson());

@freezed
abstract class ApplicationForm with _$ApplicationForm {
  const factory ApplicationForm({
    @JsonKey(name: "serial_no") required int serialNo,
    @JsonKey(name: "scholar_no") int? scholarNo,
    @JsonKey(name: "registration_no") int? registrationNo,
    @JsonKey(name: "student_name") String? studentName,
    @JsonKey(name: "father_name") String? fatherName,
    @JsonKey(name: "mother_name") String? motherName,
    @JsonKey(name: "date_of_admission") String? dateOfAdmission,
    @JsonKey(name: "transport_availabilty") String? transportAvailabilty,
    @JsonKey(name: "date_of_birth") String? dateOfBirth,
    @JsonKey(name: "gender") String? gender,
    @JsonKey(name: "class_id") String? classId,
    @JsonKey(name: "nationality") String? nationality,
    String? stream,
    String? session,
    String? section,
    @JsonKey(name: "whats_app_no") dynamic whatsAppNo,
    String? category,
    @JsonKey(name: "mob_no") int? mobNo,
    String? relegion,
    String? caste,
    String? address,
    @JsonKey(name: "prev_school_name") String? prevSchoolName,
    @JsonKey(name: "prev_school_address") String? prevSchoolAddress,
    @JsonKey(name: "prev_passing_year") String? prevPassingYear,
    @JsonKey(name: "prev_precentage") dynamic? prevPrecentage,
    @JsonKey(name: "prev_roll_no") dynamic? prevRollNo,
    @JsonKey(name: "prev_marks") dynamic? prevMarks,
    dynamic? subject,
    dynamic? applicationFormClass,
    SchoolProfile? schoolprofile,
  }) = _ApplicationForm;

  factory ApplicationForm.fromJson(Map<String, dynamic> json) =>
      _$ApplicationFormFromJson(json);
}

SchoolProfile schoolProfileFromJson(String str) =>
    SchoolProfile.fromJson(json.decode(str));

String schoolProfileToJson(SchoolProfile data) => json.encode(data.toJson());

@freezed
abstract class SchoolProfile with _$SchoolProfile {
  const factory SchoolProfile({
    required int id,
    @JsonKey(name: "school_name") String? schoolName,
    String? schoolCode,
    String? afliationNo,
    int? mobileNo,
    int? phoneNo,
    String? emailId,
    String? address,
    String? logo,
    String? privacyPolicy,
    String? about,
    String? contactUs,
    String? authKey,
    String? senderId,
    double? enquiryTemplateId,
    double? afterAdmission,
    dynamic? afterFeeSubmit,
    dynamic? feeReminder,
    double? holidayTemplateId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _SchoolProfile;

  factory SchoolProfile.fromJson(Map<String, dynamic> json) =>
      _$SchoolProfileFromJson(json);
}
