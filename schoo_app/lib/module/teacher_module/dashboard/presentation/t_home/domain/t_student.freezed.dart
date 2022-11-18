// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 't_student.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TStudent _$TStudentFromJson(Map<String, dynamic> json) {
  return _TStudent.fromJson(json);
}

/// @nodoc
class _$TStudentTearOff {
  const _$TStudentTearOff();

  _TStudent call(
      {required int id,
      String? studentname,
      @JsonKey(name: "class") String? tStudentClass,
      String? section,
      String? stream,
      String? fathername,
      @JsonKey(name: "mobile_no") int? mobileNo}) {
    return _TStudent(
      id: id,
      studentname: studentname,
      tStudentClass: tStudentClass,
      section: section,
      stream: stream,
      fathername: fathername,
      mobileNo: mobileNo,
    );
  }

  TStudent fromJson(Map<String, Object?> json) {
    return TStudent.fromJson(json);
  }
}

/// @nodoc
const $TStudent = _$TStudentTearOff();

/// @nodoc
mixin _$TStudent {
  int get id => throw _privateConstructorUsedError;
  String? get studentname => throw _privateConstructorUsedError;
  @JsonKey(name: "class")
  String? get tStudentClass => throw _privateConstructorUsedError;
  String? get section => throw _privateConstructorUsedError;
  String? get stream => throw _privateConstructorUsedError;
  String? get fathername => throw _privateConstructorUsedError;
  @JsonKey(name: "mobile_no")
  int? get mobileNo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TStudentCopyWith<TStudent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TStudentCopyWith<$Res> {
  factory $TStudentCopyWith(TStudent value, $Res Function(TStudent) then) =
      _$TStudentCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String? studentname,
      @JsonKey(name: "class") String? tStudentClass,
      String? section,
      String? stream,
      String? fathername,
      @JsonKey(name: "mobile_no") int? mobileNo});
}

/// @nodoc
class _$TStudentCopyWithImpl<$Res> implements $TStudentCopyWith<$Res> {
  _$TStudentCopyWithImpl(this._value, this._then);

  final TStudent _value;
  // ignore: unused_field
  final $Res Function(TStudent) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? studentname = freezed,
    Object? tStudentClass = freezed,
    Object? section = freezed,
    Object? stream = freezed,
    Object? fathername = freezed,
    Object? mobileNo = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      studentname: studentname == freezed
          ? _value.studentname
          : studentname // ignore: cast_nullable_to_non_nullable
              as String?,
      tStudentClass: tStudentClass == freezed
          ? _value.tStudentClass
          : tStudentClass // ignore: cast_nullable_to_non_nullable
              as String?,
      section: section == freezed
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String?,
      stream: stream == freezed
          ? _value.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as String?,
      fathername: fathername == freezed
          ? _value.fathername
          : fathername // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNo: mobileNo == freezed
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$TStudentCopyWith<$Res> implements $TStudentCopyWith<$Res> {
  factory _$TStudentCopyWith(_TStudent value, $Res Function(_TStudent) then) =
      __$TStudentCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String? studentname,
      @JsonKey(name: "class") String? tStudentClass,
      String? section,
      String? stream,
      String? fathername,
      @JsonKey(name: "mobile_no") int? mobileNo});
}

/// @nodoc
class __$TStudentCopyWithImpl<$Res> extends _$TStudentCopyWithImpl<$Res>
    implements _$TStudentCopyWith<$Res> {
  __$TStudentCopyWithImpl(_TStudent _value, $Res Function(_TStudent) _then)
      : super(_value, (v) => _then(v as _TStudent));

  @override
  _TStudent get _value => super._value as _TStudent;

  @override
  $Res call({
    Object? id = freezed,
    Object? studentname = freezed,
    Object? tStudentClass = freezed,
    Object? section = freezed,
    Object? stream = freezed,
    Object? fathername = freezed,
    Object? mobileNo = freezed,
  }) {
    return _then(_TStudent(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      studentname: studentname == freezed
          ? _value.studentname
          : studentname // ignore: cast_nullable_to_non_nullable
              as String?,
      tStudentClass: tStudentClass == freezed
          ? _value.tStudentClass
          : tStudentClass // ignore: cast_nullable_to_non_nullable
              as String?,
      section: section == freezed
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String?,
      stream: stream == freezed
          ? _value.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as String?,
      fathername: fathername == freezed
          ? _value.fathername
          : fathername // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNo: mobileNo == freezed
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TStudent implements _TStudent {
  const _$_TStudent(
      {required this.id,
      this.studentname,
      @JsonKey(name: "class") this.tStudentClass,
      this.section,
      this.stream,
      this.fathername,
      @JsonKey(name: "mobile_no") this.mobileNo});

  factory _$_TStudent.fromJson(Map<String, dynamic> json) =>
      _$$_TStudentFromJson(json);

  @override
  final int id;
  @override
  final String? studentname;
  @override
  @JsonKey(name: "class")
  final String? tStudentClass;
  @override
  final String? section;
  @override
  final String? stream;
  @override
  final String? fathername;
  @override
  @JsonKey(name: "mobile_no")
  final int? mobileNo;

  @override
  String toString() {
    return 'TStudent(id: $id, studentname: $studentname, tStudentClass: $tStudentClass, section: $section, stream: $stream, fathername: $fathername, mobileNo: $mobileNo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TStudent &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.studentname, studentname) &&
            const DeepCollectionEquality()
                .equals(other.tStudentClass, tStudentClass) &&
            const DeepCollectionEquality().equals(other.section, section) &&
            const DeepCollectionEquality().equals(other.stream, stream) &&
            const DeepCollectionEquality()
                .equals(other.fathername, fathername) &&
            const DeepCollectionEquality().equals(other.mobileNo, mobileNo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(studentname),
      const DeepCollectionEquality().hash(tStudentClass),
      const DeepCollectionEquality().hash(section),
      const DeepCollectionEquality().hash(stream),
      const DeepCollectionEquality().hash(fathername),
      const DeepCollectionEquality().hash(mobileNo));

  @JsonKey(ignore: true)
  @override
  _$TStudentCopyWith<_TStudent> get copyWith =>
      __$TStudentCopyWithImpl<_TStudent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TStudentToJson(this);
  }
}

abstract class _TStudent implements TStudent {
  const factory _TStudent(
      {required int id,
      String? studentname,
      @JsonKey(name: "class") String? tStudentClass,
      String? section,
      String? stream,
      String? fathername,
      @JsonKey(name: "mobile_no") int? mobileNo}) = _$_TStudent;

  factory _TStudent.fromJson(Map<String, dynamic> json) = _$_TStudent.fromJson;

  @override
  int get id;
  @override
  String? get studentname;
  @override
  @JsonKey(name: "class")
  String? get tStudentClass;
  @override
  String? get section;
  @override
  String? get stream;
  @override
  String? get fathername;
  @override
  @JsonKey(name: "mobile_no")
  int? get mobileNo;
  @override
  @JsonKey(ignore: true)
  _$TStudentCopyWith<_TStudent> get copyWith =>
      throw _privateConstructorUsedError;
}
