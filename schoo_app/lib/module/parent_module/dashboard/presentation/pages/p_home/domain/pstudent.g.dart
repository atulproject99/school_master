// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pstudent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PStudent _$$_PStudentFromJson(Map<String, dynamic> json) => _$_PStudent(
      studentid: json['id'] as int?,
      student: json['student'] as String,
      pStudentClass: json['class'] as String,
      image: json['image'] as String?,
      session: json['session'] as String?,
      transportdueamount: json['transportdueamount'] as int?,
      tutiondueamount: json['tutiondueamount'] as int?,
      nextfeedate: json['nextfeedate'] as String?,
    );

Map<String, dynamic> _$$_PStudentToJson(_$_PStudent instance) =>
    <String, dynamic>{
      'id': instance.studentid,
      'student': instance.student,
      'class': instance.pStudentClass,
      'image': instance.image,
      'session': instance.session,
      'transportdueamount': instance.transportdueamount,
      'tutiondueamount': instance.tutiondueamount,
      'nextfeedate': instance.nextfeedate,
    };
