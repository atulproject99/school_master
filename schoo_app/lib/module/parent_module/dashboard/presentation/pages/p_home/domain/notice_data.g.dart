// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notice_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NoticeData _$$_NoticeDataFromJson(Map<String, dynamic> json) =>
    _$_NoticeData(
      id: json['id'] as int,
      session: json['session'] as String,
      noticeDate: DateTime.parse(json['notice_date'] as String),
      noticeHeading: json['notice_heading'] as String,
      noticeDetails: json['notice_details'] as String,
    );

Map<String, dynamic> _$$_NoticeDataToJson(_$_NoticeData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'session': instance.session,
      'notice_date': instance.noticeDate.toIso8601String(),
      'notice_heading': instance.noticeHeading,
      'notice_details': instance.noticeDetails,
    };
