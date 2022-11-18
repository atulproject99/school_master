// To parse this JSON data, do
//
//     final acedemicSession = acedemicSessionFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'acedemic_session.freezed.dart';
part 'acedemic_session.g.dart';

AcedemicSession acedemicSessionFromJson(String str) =>
    AcedemicSession.fromJson(json.decode(str));

String acedemicSessionToJson(AcedemicSession data) =>
    json.encode(data.toJson());

@freezed
abstract class AcedemicSession with _$AcedemicSession {
  const factory AcedemicSession({
    required int id,
    String? session,
    String? description,
    int? status,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
  }) = _AcedemicSession;

  factory AcedemicSession.fromJson(Map<String, dynamic> json) =>
      _$AcedemicSessionFromJson(json);
}
