// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_complain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TeacherComplain _$$_TeacherComplainFromJson(Map<String, dynamic> json) =>
    _$_TeacherComplain(
      complintsby: json['complintsby'] as String?,
      complaints: json['complaints'] as String?,
      staffresponse: json['staffresponse'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$_TeacherComplainToJson(_$_TeacherComplain instance) =>
    <String, dynamic>{
      'complintsby': instance.complintsby,
      'complaints': instance.complaints,
      'staffresponse': instance.staffresponse,
      'date': instance.date?.toIso8601String(),
    };
