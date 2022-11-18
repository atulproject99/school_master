// To parse this JSON data, do
//
//     final events = eventsFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';
part 'events.freezed.dart';
part 'events.g.dart';

Events eventsFromJson(String str) => Events.fromJson(json.decode(str));

String eventsToJson(Events data) => json.encode(data.toJson());

@freezed
abstract class Events with _$Events {
  const factory Events({
    required DateTime eventdate,
    required String event,
  }) = _Events;

  factory Events.fromJson(Map<String, dynamic> json) => _$EventsFromJson(json);
}
