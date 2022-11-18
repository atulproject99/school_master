// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Notice _$$_NoticeFromJson(Map<String, dynamic> json) => _$_Notice(
      id: json['id'] as int,
      schoolId: json['school_id'] as int?,
      branchId: json['branch_id'] as int?,
      studentId: json['student_id'] as int?,
      classId: json['class_id'] as int?,
      session: json['session'] as String?,
      noticeDate: json['notice_date'] == null
          ? null
          : DateTime.parse(json['notice_date'] as String),
      noticeHeading: json['notice_heading'] as String?,
      noticeDetails: json['notice_details'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_NoticeToJson(_$_Notice instance) => <String, dynamic>{
      'id': instance.id,
      'school_id': instance.schoolId,
      'branch_id': instance.branchId,
      'student_id': instance.studentId,
      'class_id': instance.classId,
      'session': instance.session,
      'notice_date': instance.noticeDate?.toIso8601String(),
      'notice_heading': instance.noticeHeading,
      'notice_details': instance.noticeDetails,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
