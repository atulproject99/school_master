// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Complain _$$_ComplainFromJson(Map<String, dynamic> json) => _$_Complain(
      complaintid: json['compaintid'] as int,
      complaintdate: json['complaintdate'] as String,
      complaint: json['complaint'] as String?,
      complaintby: json['complaintby'] as String?,
      parentsresponse: json['parentsresponse'] as String?,
    );

Map<String, dynamic> _$$_ComplainToJson(_$_Complain instance) =>
    <String, dynamic>{
      'compaintid': instance.complaintid,
      'complaintdate': instance.complaintdate,
      'complaint': instance.complaint,
      'complaintby': instance.complaintby,
      'parentsresponse': instance.parentsresponse,
    };
