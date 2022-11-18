// GENERATED CODE - DO NOT MODIFY BY HAND

part of 't_student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TStudent _$$_TStudentFromJson(Map<String, dynamic> json) => _$_TStudent(
      id: json['id'] as int,
      studentname: json['studentname'] as String?,
      tStudentClass: json['class'] as String?,
      section: json['section'] as String?,
      stream: json['stream'] as String?,
      fathername: json['fathername'] as String?,
      mobileNo: json['mobile_no'] as int?,
    );

Map<String, dynamic> _$$_TStudentToJson(_$_TStudent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'studentname': instance.studentname,
      'class': instance.tStudentClass,
      'section': instance.section,
      'stream': instance.stream,
      'fathername': instance.fathername,
      'mobile_no': instance.mobileNo,
    };
