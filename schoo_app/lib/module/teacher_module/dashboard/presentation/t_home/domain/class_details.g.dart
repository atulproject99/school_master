// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClassDetails _$$_ClassDetailsFromJson(Map<String, dynamic> json) =>
    _$_ClassDetails(
      id: json['id'] as int,
      schoolId: json['school_id'] as int?,
      branchId: json['branch_id'] as int?,
      studentclass: json['studentclass'] as String?,
      description: json['description'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$_ClassDetailsToJson(_$_ClassDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'school_id': instance.schoolId,
      'branch_id': instance.branchId,
      'studentclass': instance.studentclass,
      'description': instance.description,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
