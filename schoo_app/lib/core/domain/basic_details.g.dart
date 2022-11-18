// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BasicDetails _$$_BasicDetailsFromJson(Map<String, dynamic> json) =>
    _$_BasicDetails(
      id: json['id'] as int,
      schoolName: json['school_name'] as String?,
      schoolCode: json['school_code'] as String?,
      afliationNo: json['afliation_no'] as String?,
      mobileNo: json['mobile_no'] as int?,
      phoneNo: json['phone_no'] as int?,
      emailId: json['email_id'] as String?,
      address: json['address'] as String?,
      logo: json['logo'] as String?,
      upiId: json['upi_id'] as String?,
      privacyPolicy: json['privacy_policy'] as String?,
      about: json['about'] as String?,
      authKey: json['auth_key'] as String?,
      senderId: json['sender_id'] as String?,
      enquiryTemplateId: (json['enquiry_template_id'] as num?)?.toDouble(),
      afterAdmission: (json['after_admission'] as num?)?.toDouble(),
      afterFeeSubmit: json['after_fee_submit'],
      feeReminder: json['fee_reminder'],
      holidayTemplateId: (json['holiday_template_id'] as num?)?.toDouble(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      contactUs: json['contact_us'] as String?,
    );

Map<String, dynamic> _$$_BasicDetailsToJson(_$_BasicDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'school_name': instance.schoolName,
      'school_code': instance.schoolCode,
      'afliation_no': instance.afliationNo,
      'mobile_no': instance.mobileNo,
      'phone_no': instance.phoneNo,
      'email_id': instance.emailId,
      'address': instance.address,
      'logo': instance.logo,
      'upi_id': instance.upiId,
      'privacy_policy': instance.privacyPolicy,
      'about': instance.about,
      'auth_key': instance.authKey,
      'sender_id': instance.senderId,
      'enquiry_template_id': instance.enquiryTemplateId,
      'after_admission': instance.afterAdmission,
      'after_fee_submit': instance.afterFeeSubmit,
      'fee_reminder': instance.feeReminder,
      'holiday_template_id': instance.holidayTemplateId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'contact_us': instance.contactUs,
    };
