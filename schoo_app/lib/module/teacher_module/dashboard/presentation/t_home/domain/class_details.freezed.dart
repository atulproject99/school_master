// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'class_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClassDetails _$ClassDetailsFromJson(Map<String, dynamic> json) {
  return _ClassDetails.fromJson(json);
}

/// @nodoc
class _$ClassDetailsTearOff {
  const _$ClassDetailsTearOff();

  _ClassDetails call(
      {required int id,
      @JsonKey(name: "school_id") int? schoolId,
      @JsonKey(name: "branch_id") int? branchId,
      String? studentclass,
      String? description,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt}) {
    return _ClassDetails(
      id: id,
      schoolId: schoolId,
      branchId: branchId,
      studentclass: studentclass,
      description: description,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  ClassDetails fromJson(Map<String, Object?> json) {
    return ClassDetails.fromJson(json);
  }
}

/// @nodoc
const $ClassDetails = _$ClassDetailsTearOff();

/// @nodoc
mixin _$ClassDetails {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "school_id")
  int? get schoolId => throw _privateConstructorUsedError;
  @JsonKey(name: "branch_id")
  int? get branchId => throw _privateConstructorUsedError;
  String? get studentclass => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClassDetailsCopyWith<ClassDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassDetailsCopyWith<$Res> {
  factory $ClassDetailsCopyWith(
          ClassDetails value, $Res Function(ClassDetails) then) =
      _$ClassDetailsCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: "school_id") int? schoolId,
      @JsonKey(name: "branch_id") int? branchId,
      String? studentclass,
      String? description,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});
}

/// @nodoc
class _$ClassDetailsCopyWithImpl<$Res> implements $ClassDetailsCopyWith<$Res> {
  _$ClassDetailsCopyWithImpl(this._value, this._then);

  final ClassDetails _value;
  // ignore: unused_field
  final $Res Function(ClassDetails) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? schoolId = freezed,
    Object? branchId = freezed,
    Object? studentclass = freezed,
    Object? description = freezed,
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
      studentclass: studentclass == freezed
          ? _value.studentclass
          : studentclass // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
abstract class _$ClassDetailsCopyWith<$Res>
    implements $ClassDetailsCopyWith<$Res> {
  factory _$ClassDetailsCopyWith(
          _ClassDetails value, $Res Function(_ClassDetails) then) =
      __$ClassDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: "school_id") int? schoolId,
      @JsonKey(name: "branch_id") int? branchId,
      String? studentclass,
      String? description,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});
}

/// @nodoc
class __$ClassDetailsCopyWithImpl<$Res> extends _$ClassDetailsCopyWithImpl<$Res>
    implements _$ClassDetailsCopyWith<$Res> {
  __$ClassDetailsCopyWithImpl(
      _ClassDetails _value, $Res Function(_ClassDetails) _then)
      : super(_value, (v) => _then(v as _ClassDetails));

  @override
  _ClassDetails get _value => super._value as _ClassDetails;

  @override
  $Res call({
    Object? id = freezed,
    Object? schoolId = freezed,
    Object? branchId = freezed,
    Object? studentclass = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_ClassDetails(
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
      studentclass: studentclass == freezed
          ? _value.studentclass
          : studentclass // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
class _$_ClassDetails implements _ClassDetails {
  const _$_ClassDetails(
      {required this.id,
      @JsonKey(name: "school_id") this.schoolId,
      @JsonKey(name: "branch_id") this.branchId,
      this.studentclass,
      this.description,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt});

  factory _$_ClassDetails.fromJson(Map<String, dynamic> json) =>
      _$$_ClassDetailsFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "school_id")
  final int? schoolId;
  @override
  @JsonKey(name: "branch_id")
  final int? branchId;
  @override
  final String? studentclass;
  @override
  final String? description;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;

  @override
  String toString() {
    return 'ClassDetails(id: $id, schoolId: $schoolId, branchId: $branchId, studentclass: $studentclass, description: $description, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ClassDetails &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.schoolId, schoolId) &&
            const DeepCollectionEquality().equals(other.branchId, branchId) &&
            const DeepCollectionEquality()
                .equals(other.studentclass, studentclass) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(schoolId),
      const DeepCollectionEquality().hash(branchId),
      const DeepCollectionEquality().hash(studentclass),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$ClassDetailsCopyWith<_ClassDetails> get copyWith =>
      __$ClassDetailsCopyWithImpl<_ClassDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClassDetailsToJson(this);
  }
}

abstract class _ClassDetails implements ClassDetails {
  const factory _ClassDetails(
      {required int id,
      @JsonKey(name: "school_id") int? schoolId,
      @JsonKey(name: "branch_id") int? branchId,
      String? studentclass,
      String? description,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt}) = _$_ClassDetails;

  factory _ClassDetails.fromJson(Map<String, dynamic> json) =
      _$_ClassDetails.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "school_id")
  int? get schoolId;
  @override
  @JsonKey(name: "branch_id")
  int? get branchId;
  @override
  String? get studentclass;
  @override
  String? get description;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$ClassDetailsCopyWith<_ClassDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
