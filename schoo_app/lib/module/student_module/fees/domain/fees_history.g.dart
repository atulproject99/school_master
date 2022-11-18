// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fees_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeesHistory _$$_FeesHistoryFromJson(Map<String, dynamic> json) =>
    _$_FeesHistory(
      month: json['month'] as String,
      amount: json['amount'] as int,
      date: json['date'] as String?,
      mode: json['mode'] as String?,
      feetype: json['feetype'] as String?,
      payamount: json['payamount'] as int?,
    );

Map<String, dynamic> _$$_FeesHistoryToJson(_$_FeesHistory instance) =>
    <String, dynamic>{
      'month': instance.month,
      'amount': instance.amount,
      'date': instance.date,
      'mode': instance.mode,
      'feetype': instance.feetype,
      'payamount': instance.payamount,
    };
