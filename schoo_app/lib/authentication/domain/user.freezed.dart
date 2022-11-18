// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {required int id,
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
      @JsonKey(name: "updated_at") String? updatedAt}) {
    return _User(
      id: id,
      schoolId: schoolId,
      branchId: branchId,
      roleId: roleId,
      role: role,
      name: name,
      username: username,
      mobileNo: mobileNo,
      email: email,
      classId: classId,
      emailVerifiedAt: emailVerifiedAt,
      showPassword: showPassword,
      status: status,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  User fromJson(Map<String, Object?> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "school_id")
  int? get schoolId => throw _privateConstructorUsedError;
  @JsonKey(name: "branch_id")
  int? get branchId => throw _privateConstructorUsedError;
  @JsonKey(name: "role_id")
  int get roleId => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: "mobile_no")
  int? get mobileNo => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "class_id")
  int? get classId => throw _privateConstructorUsedError;
  @JsonKey(name: "email_verified_at")
  String? get emailVerifiedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "show_password")
  String? get showPassword => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: "school_id") int? schoolId,
      @JsonKey(name: "branch_id") int? branchId,
      @JsonKey(name: "role_id") int roleId,
      String role,
      String? name,
      String? username,
      @JsonKey(name: "mobile_no") int? mobileNo,
      String? email,
      @JsonKey(name: "class_id") int? classId,
      @JsonKey(name: "email_verified_at") String? emailVerifiedAt,
      @JsonKey(name: "show_password") String? showPassword,
      String? status,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? schoolId = freezed,
    Object? branchId = freezed,
    Object? roleId = freezed,
    Object? role = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? mobileNo = freezed,
    Object? email = freezed,
    Object? classId = freezed,
    Object? emailVerifiedAt = freezed,
    Object? showPassword = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      schoolId: schoolId == freezed
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int?,
      branchId: branchId == freezed
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as int?,
      roleId: roleId == freezed
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNo: mobileNo == freezed
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as int?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      classId: classId == freezed
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as int?,
      emailVerifiedAt: emailVerifiedAt == freezed
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      showPassword: showPassword == freezed
          ? _value.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: "school_id") int? schoolId,
      @JsonKey(name: "branch_id") int? branchId,
      @JsonKey(name: "role_id") int roleId,
      String role,
      String? name,
      String? username,
      @JsonKey(name: "mobile_no") int? mobileNo,
      String? email,
      @JsonKey(name: "class_id") int? classId,
      @JsonKey(name: "email_verified_at") String? emailVerifiedAt,
      @JsonKey(name: "show_password") String? showPassword,
      String? status,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? id = freezed,
    Object? schoolId = freezed,
    Object? branchId = freezed,
    Object? roleId = freezed,
    Object? role = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? mobileNo = freezed,
    Object? email = freezed,
    Object? classId = freezed,
    Object? emailVerifiedAt = freezed,
    Object? showPassword = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_User(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      schoolId: schoolId == freezed
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int?,
      branchId: branchId == freezed
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as int?,
      roleId: roleId == freezed
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNo: mobileNo == freezed
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as int?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      classId: classId == freezed
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as int?,
      emailVerifiedAt: emailVerifiedAt == freezed
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      showPassword: showPassword == freezed
          ? _value.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  const _$_User(
      {required this.id,
      @JsonKey(name: "school_id") this.schoolId,
      @JsonKey(name: "branch_id") this.branchId,
      @JsonKey(name: "role_id") required this.roleId,
      required this.role,
      this.name,
      this.username,
      @JsonKey(name: "mobile_no") this.mobileNo,
      this.email,
      @JsonKey(name: "class_id") this.classId,
      @JsonKey(name: "email_verified_at") this.emailVerifiedAt,
      @JsonKey(name: "show_password") this.showPassword,
      this.status,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "school_id")
  final int? schoolId;
  @override
  @JsonKey(name: "branch_id")
  final int? branchId;
  @override
  @JsonKey(name: "role_id")
  final int roleId;
  @override
  final String role;
  @override
  final String? name;
  @override
  final String? username;
  @override
  @JsonKey(name: "mobile_no")
  final int? mobileNo;
  @override
  final String? email;
  @override
  @JsonKey(name: "class_id")
  final int? classId;
  @override
  @JsonKey(name: "email_verified_at")
  final String? emailVerifiedAt;
  @override
  @JsonKey(name: "show_password")
  final String? showPassword;
  @override
  final String? status;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;

  @override
  String toString() {
    return 'User(id: $id, schoolId: $schoolId, branchId: $branchId, roleId: $roleId, role: $role, name: $name, username: $username, mobileNo: $mobileNo, email: $email, classId: $classId, emailVerifiedAt: $emailVerifiedAt, showPassword: $showPassword, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.schoolId, schoolId) &&
            const DeepCollectionEquality().equals(other.branchId, branchId) &&
            const DeepCollectionEquality().equals(other.roleId, roleId) &&
            const DeepCollectionEquality().equals(other.role, role) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.mobileNo, mobileNo) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.classId, classId) &&
            const DeepCollectionEquality()
                .equals(other.emailVerifiedAt, emailVerifiedAt) &&
            const DeepCollectionEquality()
                .equals(other.showPassword, showPassword) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(schoolId),
      const DeepCollectionEquality().hash(branchId),
      const DeepCollectionEquality().hash(roleId),
      const DeepCollectionEquality().hash(role),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(mobileNo),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(classId),
      const DeepCollectionEquality().hash(emailVerifiedAt),
      const DeepCollectionEquality().hash(showPassword),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(this);
  }
}

abstract class _User implements User {
  const factory _User(
      {required int id,
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
      @JsonKey(name: "updated_at") String? updatedAt}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "school_id")
  int? get schoolId;
  @override
  @JsonKey(name: "branch_id")
  int? get branchId;
  @override
  @JsonKey(name: "role_id")
  int get roleId;
  @override
  String get role;
  @override
  String? get name;
  @override
  String? get username;
  @override
  @JsonKey(name: "mobile_no")
  int? get mobileNo;
  @override
  String? get email;
  @override
  @JsonKey(name: "class_id")
  int? get classId;
  @override
  @JsonKey(name: "email_verified_at")
  String? get emailVerifiedAt;
  @override
  @JsonKey(name: "show_password")
  String? get showPassword;
  @override
  String? get status;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}
