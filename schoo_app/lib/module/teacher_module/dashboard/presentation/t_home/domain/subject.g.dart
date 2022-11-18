// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subject.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Subject _$$_SubjectFromJson(Map<String, dynamic> json) => _$_Subject(
      id: json['id'] as int,
      schoolId: json['school_id'] as int?,
      branchId: json['branch_id'] as int?,
      classId: json['class_id'] as int?,
      subjectName: json['subject_name'] as String?,
      description: json['description'],
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$_SubjectToJson(_$_Subject instance) =>
    <String, dynamic>{
      'id': instance.id,
      'school_id': instance.schoolId,
      'branch_id': instance.branchId,
      'class_id': instance.classId,
      'subject_name': instance.subjectName,
      'description': instance.description,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
