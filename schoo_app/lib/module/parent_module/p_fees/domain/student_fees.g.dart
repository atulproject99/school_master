// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_fees.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StudentFees _$$_StudentFeesFromJson(Map<String, dynamic> json) =>
    _$_StudentFees(
      student: json['student'] as String,
      StudentFeesClass: json['class'] as String,
      monthname: (json['monthname'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      monthid:
          (json['monthid'] as List<dynamic>?)?.map((e) => e as int).toList(),
      monthamount: (json['monthamount'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      feestatus: (json['feestatus'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      fines: json['fines'] as int?,
      lastdue: json['lastdue'] as int?,
    );

Map<String, dynamic> _$$_StudentFeesToJson(_$_StudentFees instance) =>
    <String, dynamic>{
      'student': instance.student,
      'class': instance.StudentFeesClass,
      'monthname': instance.monthname,
      'monthid': instance.monthid,
      'monthamount': instance.monthamount,
      'feestatus': instance.feestatus,
      'fines': instance.fines,
      'lastdue': instance.lastdue,
    };
