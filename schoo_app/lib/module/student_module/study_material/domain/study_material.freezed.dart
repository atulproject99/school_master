// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'study_material.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StudyMaterial _$StudyMaterialFromJson(Map<String, dynamic> json) {
  return _StudyMaterial.fromJson(json);
}

/// @nodoc
class _$StudyMaterialTearOff {
  const _$StudyMaterialTearOff();

  _StudyMaterial call(
      {required int id,
      @JsonKey(name: "class") String? studyMaterialClass,
      String? subject,
      String? studymaterial,
      String? date}) {
    return _StudyMaterial(
      id: id,
      studyMaterialClass: studyMaterialClass,
      subject: subject,
      studymaterial: studymaterial,
      date: date,
    );
  }

  StudyMaterial fromJson(Map<String, Object?> json) {
    return StudyMaterial.fromJson(json);
  }
}

/// @nodoc
const $StudyMaterial = _$StudyMaterialTearOff();

/// @nodoc
mixin _$StudyMaterial {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "class")
  String? get studyMaterialClass => throw _privateConstructorUsedError;
  String? get subject => throw _privateConstructorUsedError;
  String? get studymaterial => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudyMaterialCopyWith<StudyMaterial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudyMaterialCopyWith<$Res> {
  factory $StudyMaterialCopyWith(
          StudyMaterial value, $Res Function(StudyMaterial) then) =
      _$StudyMaterialCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: "class") String? studyMaterialClass,
      String? subject,
      String? studymaterial,
      String? date});
}

/// @nodoc
class _$StudyMaterialCopyWithImpl<$Res>
    implements $StudyMaterialCopyWith<$Res> {
  _$StudyMaterialCopyWithImpl(this._value, this._then);

  final StudyMaterial _value;
  // ignore: unused_field
  final $Res Function(StudyMaterial) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? studyMaterialClass = freezed,
    Object? subject = freezed,
    Object? studymaterial = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      studyMaterialClass: studyMaterialClass == freezed
          ? _value.studyMaterialClass
          : studyMaterialClass // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      studymaterial: studymaterial == freezed
          ? _value.studymaterial
          : studymaterial // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$StudyMaterialCopyWith<$Res>
    implements $StudyMaterialCopyWith<$Res> {
  factory _$StudyMaterialCopyWith(
          _StudyMaterial value, $Res Function(_StudyMaterial) then) =
      __$StudyMaterialCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: "class") String? studyMaterialClass,
      String? subject,
      String? studymaterial,
      String? date});
}

/// @nodoc
class __$StudyMaterialCopyWithImpl<$Res>
    extends _$StudyMaterialCopyWithImpl<$Res>
    implements _$StudyMaterialCopyWith<$Res> {
  __$StudyMaterialCopyWithImpl(
      _StudyMaterial _value, $Res Function(_StudyMaterial) _then)
      : super(_value, (v) => _then(v as _StudyMaterial));

  @override
  _StudyMaterial get _value => super._value as _StudyMaterial;

  @override
  $Res call({
    Object? id = freezed,
    Object? studyMaterialClass = freezed,
    Object? subject = freezed,
    Object? studymaterial = freezed,
    Object? date = freezed,
  }) {
    return _then(_StudyMaterial(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      studyMaterialClass: studyMaterialClass == freezed
          ? _value.studyMaterialClass
          : studyMaterialClass // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      studymaterial: studymaterial == freezed
          ? _value.studymaterial
          : studymaterial // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StudyMaterial implements _StudyMaterial {
  const _$_StudyMaterial(
      {required this.id,
      @JsonKey(name: "class") this.studyMaterialClass,
      this.subject,
      this.studymaterial,
      this.date});

  factory _$_StudyMaterial.fromJson(Map<String, dynamic> json) =>
      _$$_StudyMaterialFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "class")
  final String? studyMaterialClass;
  @override
  final String? subject;
  @override
  final String? studymaterial;
  @override
  final String? date;

  @override
  String toString() {
    return 'StudyMaterial(id: $id, studyMaterialClass: $studyMaterialClass, subject: $subject, studymaterial: $studymaterial, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StudyMaterial &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.studyMaterialClass, studyMaterialClass) &&
            const DeepCollectionEquality().equals(other.subject, subject) &&
            const DeepCollectionEquality()
                .equals(other.studymaterial, studymaterial) &&
            const DeepCollectionEquality().equals(other.date, date));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(studyMaterialClass),
      const DeepCollectionEquality().hash(subject),
      const DeepCollectionEquality().hash(studymaterial),
      const DeepCollectionEquality().hash(date));

  @JsonKey(ignore: true)
  @override
  _$StudyMaterialCopyWith<_StudyMaterial> get copyWith =>
      __$StudyMaterialCopyWithImpl<_StudyMaterial>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StudyMaterialToJson(this);
  }
}

abstract class _StudyMaterial implements StudyMaterial {
  const factory _StudyMaterial(
      {required int id,
      @JsonKey(name: "class") String? studyMaterialClass,
      String? subject,
      String? studymaterial,
      String? date}) = _$_StudyMaterial;

  factory _StudyMaterial.fromJson(Map<String, dynamic> json) =
      _$_StudyMaterial.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "class")
  String? get studyMaterialClass;
  @override
  String? get subject;
  @override
  String? get studymaterial;
  @override
  String? get date;
  @override
  @JsonKey(ignore: true)
  _$StudyMaterialCopyWith<_StudyMaterial> get copyWith =>
      throw _privateConstructorUsedError;
}
