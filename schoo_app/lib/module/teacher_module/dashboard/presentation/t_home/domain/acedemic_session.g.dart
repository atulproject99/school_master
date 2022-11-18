// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'acedemic_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AcedemicSession _$$_AcedemicSessionFromJson(Map<String, dynamic> json) =>
    _$_AcedemicSession(
      id: json['id'] as int,
      session: json['session'] as String?,
      description: json['description'] as String?,
      status: json['status'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_AcedemicSessionToJson(_$_AcedemicSession instance) =>
    <String, dynamic>{
      'id': instance.id,
      'session': instance.session,
      'description': instance.description,
      'status': instance.status,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
