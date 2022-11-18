// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as int,
      schoolId: json['school_id'] as int?,
      branchId: json['branch_id'] as int?,
      roleId: json['role_id'] as int,
      role: json['role'] as String,
      name: json['name'] as String?,
      username: json['username'] as String?,
      mobileNo: json['mobile_no'] as int?,
      email: json['email'] as String?,
      classId: json['class_id'] as int?,
      emailVerifiedAt: json['email_verified_at'] as String?,
      showPassword: json['show_password'] as String?,
      status: json['status'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'school_id': instance.schoolId,
      'branch_id': instance.branchId,
      'role_id': instance.roleId,
      'role': instance.role,
      'name': instance.name,
      'username': instance.username,
      'mobile_no': instance.mobileNo,
      'email': instance.email,
      'class_id': instance.classId,
      'email_verified_at': instance.emailVerifiedAt,
      'show_password': instance.showPassword,
      'status': instance.status,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
