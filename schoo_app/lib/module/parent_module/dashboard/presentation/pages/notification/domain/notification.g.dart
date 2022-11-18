// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Notification _$$_NotificationFromJson(Map<String, dynamic> json) =>
    _$_Notification(
      id: json['id'] as int,
      schoolId: json['school_id'] as int?,
      branchId: json['branch_id'] as int?,
      notification: json['notification'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$_NotificationToJson(_$_Notification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'school_id': instance.schoolId,
      'branch_id': instance.branchId,
      'notification': instance.notification,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
