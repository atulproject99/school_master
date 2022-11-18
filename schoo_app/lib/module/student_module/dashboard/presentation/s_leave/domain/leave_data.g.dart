// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leave_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LeaveData _$$_LeaveDataFromJson(Map<String, dynamic> json) => _$_LeaveData(
      id: json['id'] as int,
      studentid: json['studentid'] as int,
      studentCSlass: json['class'] as String?,
      reqestDate: json['request_date'] as String?,
      fromDate: json['from_date'] as String,
      toDate: json['to_date'] as String?,
      status: json['status'] as int?,
      reasone: json['reasone'] as String?,
    );

Map<String, dynamic> _$$_LeaveDataToJson(_$_LeaveData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'studentid': instance.studentid,
      'class': instance.studentCSlass,
      'request_date': instance.reqestDate,
      'from_date': instance.fromDate,
      'to_date': instance.toDate,
      'status': instance.status,
      'reasone': instance.reasone,
    };
