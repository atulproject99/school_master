// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'study_material.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StudyMaterial _$$_StudyMaterialFromJson(Map<String, dynamic> json) =>
    _$_StudyMaterial(
      id: json['id'] as int,
      studyMaterialClass: json['class'] as String?,
      subject: json['subject'] as String?,
      studymaterial: json['studymaterial'] as String?,
      date: json['date'] as String?,
    );

Map<String, dynamic> _$$_StudyMaterialToJson(_$_StudyMaterial instance) =>
    <String, dynamic>{
      'id': instance.id,
      'class': instance.studyMaterialClass,
      'subject': instance.subject,
      'studymaterial': instance.studymaterial,
      'date': instance.date,
    };
