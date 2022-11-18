// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homework.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Homework _$$_HomeworkFromJson(Map<String, dynamic> json) => _$_Homework(
      id: json['id'] as int?,
      homeworkClass: json['class'] as String?,
      subject: json['subject'] as String?,
      pdf: json['pdf'] as String?,
      videolink: json['videolink'] as String?,
      date: json['date'] as String?,
      responsestatus: json['responsestatus'] as String?,
    );

Map<String, dynamic> _$$_HomeworkToJson(_$_Homework instance) =>
    <String, dynamic>{
      'id': instance.id,
      'class': instance.homeworkClass,
      'subject': instance.subject,
      'pdf': instance.pdf,
      'videolink': instance.videolink,
      'date': instance.date,
      'responsestatus': instance.responsestatus,
    };
