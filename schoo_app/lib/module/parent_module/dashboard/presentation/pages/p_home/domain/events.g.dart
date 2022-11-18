// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Events _$$_EventsFromJson(Map<String, dynamic> json) => _$_Events(
      eventdate: DateTime.parse(json['eventdate'] as String),
      event: json['event'] as String,
    );

Map<String, dynamic> _$$_EventsToJson(_$_Events instance) => <String, dynamic>{
      'eventdate': instance.eventdate.toIso8601String(),
      'event': instance.event,
    };
