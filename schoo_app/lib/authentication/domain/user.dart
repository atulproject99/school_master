// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'user.freezed.dart';
part 'user.g.dart';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

@freezed
abstract class User with _$User {
  const factory User({
    required int id,
    @JsonKey(name: "school_id") int? schoolId,
    @JsonKey(name: "branch_id") int? branchId,
    @JsonKey(name: "role_id") required int roleId,
    required String role,
    String? name,
    String? username,
    @JsonKey(name: "mobile_no") int? mobileNo,
    String? email,
    @JsonKey(name: "class_id") int? classId,
    @JsonKey(name: "email_verified_at") String? emailVerifiedAt,
    @JsonKey(name: "show_password") String? showPassword,
    String? status,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
