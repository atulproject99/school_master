// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApplicationForm _$$_ApplicationFormFromJson(Map<String, dynamic> json) =>
    _$_ApplicationForm(
      serialNo: json['serial_no'] as int,
      scholarNo: json['scholar_no'] as int?,
      registrationNo: json['registration_no'] as int?,
      studentName: json['student_name'] as String?,
      fatherName: json['father_name'] as String?,
      motherName: json['mother_name'] as String?,
      dateOfAdmission: json['date_of_admission'] as String?,
      transportAvailabilty: json['transport_availabilty'] as String?,
      dateOfBirth: json['date_of_birth'] as String?,
      gender: json['gender'] as String?,
      classId: json['class_id'] as String?,
      nationality: json['nationality'] as String?,
      stream: json['stream'] as String?,
      session: json['session'] as String?,
      section: json['section'] as String?,
      whatsAppNo: json['whats_app_no'],
      category: json['category'] as String?,
      mobNo: json['mob_no'] as int?,
      relegion: json['relegion'] as String?,
      caste: json['caste'] as String?,
      address: json['address'] as String?,
      prevSchoolName: json['prev_school_name'] as String?,
      prevSchoolAddress: json['prev_school_address'] as String?,
      prevPassingYear: json['prev_passing_year'] as String?,
      prevPrecentage: json['prev_precentage'],
      prevRollNo: json['prev_roll_no'],
      prevMarks: json['prev_marks'],
      subject: json['subject'],
      applicationFormClass: json['applicationFormClass'],
      schoolprofile: json['schoolprofile'] == null
          ? null
          : SchoolProfile.fromJson(
              json['schoolprofile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ApplicationFormToJson(_$_ApplicationForm instance) =>
    <String, dynamic>{
      'serial_no': instance.serialNo,
      'scholar_no': instance.scholarNo,
      'registration_no': instance.registrationNo,
      'student_name': instance.studentName,
      'father_name': instance.fatherName,
      'mother_name': instance.motherName,
      'date_of_admission': instance.dateOfAdmission,
      'transport_availabilty': instance.transportAvailabilty,
      'date_of_birth': instance.dateOfBirth,
      'gender': instance.gender,
      'class_id': instance.classId,
      'nationality': instance.nationality,
      'stream': instance.stream,
      'session': instance.session,
      'section': instance.section,
      'whats_app_no': instance.whatsAppNo,
      'category': instance.category,
      'mob_no': instance.mobNo,
      'relegion': instance.relegion,
      'caste': instance.caste,
      'address': instance.address,
      'prev_school_name': instance.prevSchoolName,
      'prev_school_address': instance.prevSchoolAddress,
      'prev_passing_year': instance.prevPassingYear,
      'prev_precentage': instance.prevPrecentage,
      'prev_roll_no': instance.prevRollNo,
      'prev_marks': instance.prevMarks,
      'subject': instance.subject,
      'applicationFormClass': instance.applicationFormClass,
      'schoolprofile': instance.schoolprofile,
    };

_$_SchoolProfile _$$_SchoolProfileFromJson(Map<String, dynamic> json) =>
    _$_SchoolProfile(
      id: json['id'] as int,
      schoolName: json['school_name'] as String?,
      schoolCode: json['schoolCode'] as String?,
      afliationNo: json['afliationNo'] as String?,
      mobileNo: json['mobileNo'] as int?,
      phoneNo: json['phoneNo'] as int?,
      emailId: json['emailId'] as String?,
      address: json['address'] as String?,
      logo: json['logo'] as String?,
      privacyPolicy: json['privacyPolicy'] as String?,
      about: json['about'] as String?,
      contactUs: json['contactUs'] as String?,
      authKey: json['authKey'] as String?,
      senderId: json['senderId'] as String?,
      enquiryTemplateId: (json['enquiryTemplateId'] as num?)?.toDouble(),
      afterAdmission: (json['afterAdmission'] as num?)?.toDouble(),
      afterFeeSubmit: json['afterFeeSubmit'],
      feeReminder: json['feeReminder'],
      holidayTemplateId: (json['holidayTemplateId'] as num?)?.toDouble(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_SchoolProfileToJson(_$_SchoolProfile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'school_name': instance.schoolName,
      'schoolCode': instance.schoolCode,
      'afliationNo': instance.afliationNo,
      'mobileNo': instance.mobileNo,
      'phoneNo': instance.phoneNo,
      'emailId': instance.emailId,
      'address': instance.address,
      'logo': instance.logo,
      'privacyPolicy': instance.privacyPolicy,
      'about': instance.about,
      'contactUs': instance.contactUs,
      'authKey': instance.authKey,
      'senderId': instance.senderId,
      'enquiryTemplateId': instance.enquiryTemplateId,
      'afterAdmission': instance.afterAdmission,
      'afterFeeSubmit': instance.afterFeeSubmit,
      'feeReminder': instance.feeReminder,
      'holidayTemplateId': instance.holidayTemplateId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
