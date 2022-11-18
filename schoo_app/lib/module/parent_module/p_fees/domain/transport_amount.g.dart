// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transport_amount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransportAmount _$$_TransportAmountFromJson(Map<String, dynamic> json) =>
    _$_TransportAmount(
      student: json['student'] as String,
      studentClass: json['class'] as String?,
      aplliedForTransport: json['apllied_for_transport'] as String?,
      transportFee: json['transport_fee'] as int?,
      monthname: (json['monthname'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      monthid:
          (json['monthid'] as List<dynamic>?)?.map((e) => e as int).toList(),
      feestatus: (json['feestatus'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      lastdue: json['lastdue'] as int?,
    );

Map<String, dynamic> _$$_TransportAmountToJson(_$_TransportAmount instance) =>
    <String, dynamic>{
      'student': instance.student,
      'class': instance.studentClass,
      'apllied_for_transport': instance.aplliedForTransport,
      'transport_fee': instance.transportFee,
      'monthname': instance.monthname,
      'monthid': instance.monthid,
      'feestatus': instance.feestatus,
      'lastdue': instance.lastdue,
    };
