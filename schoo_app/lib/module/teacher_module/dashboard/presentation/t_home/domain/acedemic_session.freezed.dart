// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'acedemic_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AcedemicSession _$AcedemicSessionFromJson(Map<String, dynamic> json) {
  return _AcedemicSession.fromJson(json);
}

/// @nodoc
class _$AcedemicSessionTearOff {
  const _$AcedemicSessionTearOff();

  _AcedemicSession call(
      {required int id,
      String? session,
      String? description,
      int? status,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt}) {
    return _AcedemicSession(
      id: id,
      session: session,
      description: description,
      status: status,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  AcedemicSession fromJson(Map<String, Object?> json) {
    return AcedemicSession.fromJson(json);
  }
}

/// @nodoc
const $AcedemicSession = _$AcedemicSessionTearOff();

/// @nodoc
mixin _$AcedemicSession {
  int get id => throw _privateConstructorUsedError;
  String? get session => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AcedemicSessionCopyWith<AcedemicSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcedemicSessionCopyWith<$Res> {
  factory $AcedemicSessionCopyWith(
          AcedemicSession value, $Res Function(AcedemicSession) then) =
      _$AcedemicSessionCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String? session,
      String? description,
      int? status,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt});
}

/// @nodoc
class _$AcedemicSessionCopyWithImpl<$Res>
    implements $AcedemicSessionCopyWith<$Res> {
  _$AcedemicSessionCopyWithImpl(this._value, this._then);

  final AcedemicSession _value;
  // ignore: unused_field
  final $Res Function(AcedemicSession) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? session = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      session: session == freezed
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$AcedemicSessionCopyWith<$Res>
    implements $AcedemicSessionCopyWith<$Res> {
  factory _$AcedemicSessionCopyWith(
          _AcedemicSession value, $Res Function(_AcedemicSession) then) =
      __$AcedemicSessionCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String? session,
      String? description,
      int? status,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt});
}

/// @nodoc
class __$AcedemicSessionCopyWithImpl<$Res>
    extends _$AcedemicSessionCopyWithImpl<$Res>
    implements _$AcedemicSessionCopyWith<$Res> {
  __$AcedemicSessionCopyWithImpl(
      _AcedemicSession _value, $Res Function(_AcedemicSession) _then)
      : super(_value, (v) => _then(v as _AcedemicSession));

  @override
  _AcedemicSession get _value => super._value as _AcedemicSession;

  @override
  $Res call({
    Object? id = freezed,
    Object? session = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_AcedemicSession(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      session: session == freezed
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AcedemicSession implements _AcedemicSession {
  const _$_AcedemicSession(
      {required this.id,
      this.session,
      this.description,
      this.status,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt});

  factory _$_AcedemicSession.fromJson(Map<String, dynamic> json) =>
      _$$_AcedemicSessionFromJson(json);

  @override
  final int id;
  @override
  final String? session;
  @override
  final String? description;
  @override
  final int? status;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'AcedemicSession(id: $id, session: $session, description: $description, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AcedemicSession &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.session, session) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(session),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$AcedemicSessionCopyWith<_AcedemicSession> get copyWith =>
      __$AcedemicSessionCopyWithImpl<_AcedemicSession>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AcedemicSessionToJson(this);
  }
}

abstract class _AcedemicSession implements AcedemicSession {
  const factory _AcedemicSession(
      {required int id,
      String? session,
      String? description,
      int? status,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt}) = _$_AcedemicSession;

  factory _AcedemicSession.fromJson(Map<String, dynamic> json) =
      _$_AcedemicSession.fromJson;

  @override
  int get id;
  @override
  String? get session;
  @override
  String? get description;
  @override
  int? get status;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$AcedemicSessionCopyWith<_AcedemicSession> get copyWith =>
      throw _privateConstructorUsedError;
}
