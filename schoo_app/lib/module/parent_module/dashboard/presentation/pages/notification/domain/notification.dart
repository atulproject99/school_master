// To parse this JSON data, do
//
//     final notification = notificationFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'notification.freezed.dart';
part 'notification.g.dart';

Notification notificationFromJson(String str) =>
    Notification.fromJson(json.decode(str));

String notificationToJson(Notification data) => json.encode(data.toJson());

@freezed
abstract class Notification with _$Notification {
  const factory Notification({
    required int id,
    @JsonKey(name: "school_id") int? schoolId,
    @JsonKey(name: "branch_id") int? branchId,
    String? notification,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
  }) = _Notification;

  factory Notification.fromJson(Map<String, dynamic> json) =>
      _$NotificationFromJson(json);
}
