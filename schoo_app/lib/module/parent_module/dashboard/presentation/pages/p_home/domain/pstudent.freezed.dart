// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pstudent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PStudent _$PStudentFromJson(Map<String, dynamic> json) {
  return _PStudent.fromJson(json);
}

/// @nodoc
class _$PStudentTearOff {
  const _$PStudentTearOff();

  _PStudent call(
      {@JsonKey(name: "id") int? studentid,
      required String student,
      @JsonKey(name: "class") required String pStudentClass,
      String? image,
      String? session,
      int? transportdueamount,
      int? tutiondueamount,
      String? nextfeedate}) {
    return _PStudent(
      studentid: studentid,
      student: student,
      pStudentClass: pStudentClass,
      image: image,
      session: session,
      transportdueamount: transportdueamount,
      tutiondueamount: tutiondueamount,
      nextfeedate: nextfeedate,
    );
  }

  PStudent fromJson(Map<String, Object?> json) {
    return PStudent.fromJson(json);
  }
}

/// @nodoc
const $PStudent = _$PStudentTearOff();

/// @nodoc
mixin _$PStudent {
  @JsonKey(name: "id")
  int? get studentid => throw _privateConstructorUsedError;
  String get student => throw _privateConstructorUsedError;
  @JsonKey(name: "class")
  String get pStudentClass => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get session => throw _privateConstructorUsedError;
  int? get transportdueamount => throw _privateConstructorUsedError;
  int? get tutiondueamount => throw _privateConstructorUsedError;
  String? get nextfeedate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PStudentCopyWith<PStudent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PStudentCopyWith<$Res> {
  factory $PStudentCopyWith(PStudent value, $Res Function(PStudent) then) =
      _$PStudentCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") int? studentid,
      String student,
      @JsonKey(name: "class") String pStudentClass,
      String? image,
      String? session,
      int? transportdueamount,
      int? tutiondueamount,
      String? nextfeedate});
}

/// @nodoc
class _$PStudentCopyWithImpl<$Res> implements $PStudentCopyWith<$Res> {
  _$PStudentCopyWithImpl(this._value, this._then);

  final PStudent _value;
  // ignore: unused_field
  final $Res Function(PStudent) _then;

  @override
  $Res call({
    Object? studentid = freezed,
    Object? student = freezed,
    Object? pStudentClass = freezed,
    Object? image = freezed,
    Object? session = freezed,
    Object? transportdueamount = freezed,
    Object? tutiondueamount = freezed,
    Object? nextfeedate = freezed,
  }) {
    return _then(_value.copyWith(
      studentid: studentid == freezed
          ? _value.studentid
          : studentid // ignore: cast_nullable_to_non_nullable
              as int?,
      student: student == freezed
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as String,
      pStudentClass: pStudentClass == freezed
          ? _value.pStudentClass
          : pStudentClass // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      session: session == freezed
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as String?,
      transportdueamount: transportdueamount == freezed
          ? _value.transportdueamount
          : transportdueamount // ignore: cast_nullable_to_non_nullable
              as int?,
      tutiondueamount: tutiondueamount == freezed
          ? _value.tutiondueamount
          : tutiondueamount // ignore: cast_nullable_to_non_nullable
              as int?,
      nextfeedate: nextfeedate == freezed
          ? _value.nextfeedate
          : nextfeedate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PStudentCopyWith<$Res> implements $PStudentCopyWith<$Res> {
  factory _$PStudentCopyWith(_PStudent value, $Res Function(_PStudent) then) =
      __$PStudentCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") int? studentid,
      String student,
      @JsonKey(name: "class") String pStudentClass,
      String? image,
      String? session,
      int? transportdueamount,
      int? tutiondueamount,
      String? nextfeedate});
}

/// @nodoc
class __$PStudentCopyWithImpl<$Res> extends _$PStudentCopyWithImpl<$Res>
    implements _$PStudentCopyWith<$Res> {
  __$PStudentCopyWithImpl(_PStudent _value, $Res Function(_PStudent) _then)
      : super(_value, (v) => _then(v as _PStudent));

  @override
  _PStudent get _value => super._value as _PStudent;

  @override
  $Res call({
    Object? studentid = freezed,
    Object? student = freezed,
    Object? pStudentClass = freezed,
    Object? image = freezed,
    Object? session = freezed,
    Object? transportdueamount = freezed,
    Object? tutiondueamount = freezed,
    Object? nextfeedate = freezed,
  }) {
    return _then(_PStudent(
      studentid: studentid == freezed
          ? _value.studentid
          : studentid // ignore: cast_nullable_to_non_nullable
              as int?,
      student: student == freezed
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as String,
      pStudentClass: pStudentClass == freezed
          ? _value.pStudentClass
          : pStudentClass // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      session: session == freezed
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as String?,
      transportdueamount: transportdueamount == freezed
          ? _value.transportdueamount
          : transportdueamount // ignore: cast_nullable_to_non_nullable
              as int?,
      tutiondueamount: tutiondueamount == freezed
          ? _value.tutiondueamount
          : tutiondueamount // ignore: cast_nullable_to_non_nullable
              as int?,
      nextfeedate: nextfeedate == freezed
          ? _value.nextfeedate
          : nextfeedate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PStudent implements _PStudent {
  const _$_PStudent(
      {@JsonKey(name: "id") this.studentid,
      required this.student,
      @JsonKey(name: "class") required this.pStudentClass,
      this.image,
      this.session,
      this.transportdueamount,
      this.tutiondueamount,
      this.nextfeedate});

  factory _$_PStudent.fromJson(Map<String, dynamic> json) =>
      _$$_PStudentFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? studentid;
  @override
  final String student;
  @override
  @JsonKey(name: "class")
  final String pStudentClass;
  @override
  final String? image;
  @override
  final String? session;
  @override
  final int? transportdueamount;
  @override
  final int? tutiondueamount;
  @override
  final String? nextfeedate;

  @override
  String toString() {
    return 'PStudent(studentid: $studentid, student: $student, pStudentClass: $pStudentClass, image: $image, session: $session, transportdueamount: $transportdueamount, tutiondueamount: $tutiondueamount, nextfeedate: $nextfeedate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PStudent &&
            const DeepCollectionEquality().equals(other.studentid, studentid) &&
            const DeepCollectionEquality().equals(other.student, student) &&
            const DeepCollectionEquality()
                .equals(other.pStudentClass, pStudentClass) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.session, session) &&
            const DeepCollectionEquality()
                .equals(other.transportdueamount, transportdueamount) &&
            const DeepCollectionEquality()
                .equals(other.tutiondueamount, tutiondueamount) &&
            const DeepCollectionEquality()
                .equals(other.nextfeedate, nextfeedate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(studentid),
      const DeepCollectionEquality().hash(student),
      const DeepCollectionEquality().hash(pStudentClass),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(session),
      const DeepCollectionEquality().hash(transportdueamount),
      const DeepCollectionEquality().hash(tutiondueamount),
      const DeepCollectionEquality().hash(nextfeedate));

  @JsonKey(ignore: true)
  @override
  _$PStudentCopyWith<_PStudent> get copyWith =>
      __$PStudentCopyWithImpl<_PStudent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PStudentToJson(this);
  }
}

abstract class _PStudent implements PStudent {
  const factory _PStudent(
      {@JsonKey(name: "id") int? studentid,
      required String student,
      @JsonKey(name: "class") required String pStudentClass,
      String? image,
      String? session,
      int? transportdueamount,
      int? tutiondueamount,
      String? nextfeedate}) = _$_PStudent;

  factory _PStudent.fromJson(Map<String, dynamic> json) = _$_PStudent.fromJson;

  @override
  @JsonKey(name: "id")
  int? get studentid;
  @override
  String get student;
  @override
  @JsonKey(name: "class")
  String get pStudentClass;
  @override
  String? get image;
  @override
  String? get session;
  @override
  int? get transportdueamount;
  @override
  int? get tutiondueamount;
  @override
  String? get nextfeedate;
  @override
  @JsonKey(ignore: true)
  _$PStudentCopyWith<_PStudent> get copyWith =>
      throw _privateConstructorUsedError;
}
