// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'student_fees.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StudentFees _$StudentFeesFromJson(Map<String, dynamic> json) {
  return _StudentFees.fromJson(json);
}

/// @nodoc
class _$StudentFeesTearOff {
  const _$StudentFeesTearOff();

  _StudentFees call(
      {required String student,
      @JsonKey(name: "class") required String StudentFeesClass,
      List<String>? monthname,
      List<int>? monthid,
      List<int>? monthamount,
      List<String>? feestatus,
      int? fines,
      int? lastdue}) {
    return _StudentFees(
      student: student,
      StudentFeesClass: StudentFeesClass,
      monthname: monthname,
      monthid: monthid,
      monthamount: monthamount,
      feestatus: feestatus,
      fines: fines,
      lastdue: lastdue,
    );
  }

  StudentFees fromJson(Map<String, Object?> json) {
    return StudentFees.fromJson(json);
  }
}

/// @nodoc
const $StudentFees = _$StudentFeesTearOff();

/// @nodoc
mixin _$StudentFees {
  String get student => throw _privateConstructorUsedError;
  @JsonKey(name: "class")
  String get StudentFeesClass => throw _privateConstructorUsedError;
  List<String>? get monthname => throw _privateConstructorUsedError;
  List<int>? get monthid => throw _privateConstructorUsedError;
  List<int>? get monthamount => throw _privateConstructorUsedError;
  List<String>? get feestatus => throw _privateConstructorUsedError;
  int? get fines => throw _privateConstructorUsedError;
  int? get lastdue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudentFeesCopyWith<StudentFees> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentFeesCopyWith<$Res> {
  factory $StudentFeesCopyWith(
          StudentFees value, $Res Function(StudentFees) then) =
      _$StudentFeesCopyWithImpl<$Res>;
  $Res call(
      {String student,
      @JsonKey(name: "class") String StudentFeesClass,
      List<String>? monthname,
      List<int>? monthid,
      List<int>? monthamount,
      List<String>? feestatus,
      int? fines,
      int? lastdue});
}

/// @nodoc
class _$StudentFeesCopyWithImpl<$Res> implements $StudentFeesCopyWith<$Res> {
  _$StudentFeesCopyWithImpl(this._value, this._then);

  final StudentFees _value;
  // ignore: unused_field
  final $Res Function(StudentFees) _then;

  @override
  $Res call({
    Object? student = freezed,
    Object? StudentFeesClass = freezed,
    Object? monthname = freezed,
    Object? monthid = freezed,
    Object? monthamount = freezed,
    Object? feestatus = freezed,
    Object? fines = freezed,
    Object? lastdue = freezed,
  }) {
    return _then(_value.copyWith(
      student: student == freezed
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as String,
      StudentFeesClass: StudentFeesClass == freezed
          ? _value.StudentFeesClass
          : StudentFeesClass // ignore: cast_nullable_to_non_nullable
              as String,
      monthname: monthname == freezed
          ? _value.monthname
          : monthname // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      monthid: monthid == freezed
          ? _value.monthid
          : monthid // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      monthamount: monthamount == freezed
          ? _value.monthamount
          : monthamount // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      feestatus: feestatus == freezed
          ? _value.feestatus
          : feestatus // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      fines: fines == freezed
          ? _value.fines
          : fines // ignore: cast_nullable_to_non_nullable
              as int?,
      lastdue: lastdue == freezed
          ? _value.lastdue
          : lastdue // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$StudentFeesCopyWith<$Res>
    implements $StudentFeesCopyWith<$Res> {
  factory _$StudentFeesCopyWith(
          _StudentFees value, $Res Function(_StudentFees) then) =
      __$StudentFeesCopyWithImpl<$Res>;
  @override
  $Res call(
      {String student,
      @JsonKey(name: "class") String StudentFeesClass,
      List<String>? monthname,
      List<int>? monthid,
      List<int>? monthamount,
      List<String>? feestatus,
      int? fines,
      int? lastdue});
}

/// @nodoc
class __$StudentFeesCopyWithImpl<$Res> extends _$StudentFeesCopyWithImpl<$Res>
    implements _$StudentFeesCopyWith<$Res> {
  __$StudentFeesCopyWithImpl(
      _StudentFees _value, $Res Function(_StudentFees) _then)
      : super(_value, (v) => _then(v as _StudentFees));

  @override
  _StudentFees get _value => super._value as _StudentFees;

  @override
  $Res call({
    Object? student = freezed,
    Object? StudentFeesClass = freezed,
    Object? monthname = freezed,
    Object? monthid = freezed,
    Object? monthamount = freezed,
    Object? feestatus = freezed,
    Object? fines = freezed,
    Object? lastdue = freezed,
  }) {
    return _then(_StudentFees(
      student: student == freezed
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as String,
      StudentFeesClass: StudentFeesClass == freezed
          ? _value.StudentFeesClass
          : StudentFeesClass // ignore: cast_nullable_to_non_nullable
              as String,
      monthname: monthname == freezed
          ? _value.monthname
          : monthname // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      monthid: monthid == freezed
          ? _value.monthid
          : monthid // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      monthamount: monthamount == freezed
          ? _value.monthamount
          : monthamount // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      feestatus: feestatus == freezed
          ? _value.feestatus
          : feestatus // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      fines: fines == freezed
          ? _value.fines
          : fines // ignore: cast_nullable_to_non_nullable
              as int?,
      lastdue: lastdue == freezed
          ? _value.lastdue
          : lastdue // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StudentFees implements _StudentFees {
  const _$_StudentFees(
      {required this.student,
      @JsonKey(name: "class") required this.StudentFeesClass,
      this.monthname,
      this.monthid,
      this.monthamount,
      this.feestatus,
      this.fines,
      this.lastdue});

  factory _$_StudentFees.fromJson(Map<String, dynamic> json) =>
      _$$_StudentFeesFromJson(json);

  @override
  final String student;
  @override
  @JsonKey(name: "class")
  final String StudentFeesClass;
  @override
  final List<String>? monthname;
  @override
  final List<int>? monthid;
  @override
  final List<int>? monthamount;
  @override
  final List<String>? feestatus;
  @override
  final int? fines;
  @override
  final int? lastdue;

  @override
  String toString() {
    return 'StudentFees(student: $student, StudentFeesClass: $StudentFeesClass, monthname: $monthname, monthid: $monthid, monthamount: $monthamount, feestatus: $feestatus, fines: $fines, lastdue: $lastdue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StudentFees &&
            const DeepCollectionEquality().equals(other.student, student) &&
            const DeepCollectionEquality()
                .equals(other.StudentFeesClass, StudentFeesClass) &&
            const DeepCollectionEquality().equals(other.monthname, monthname) &&
            const DeepCollectionEquality().equals(other.monthid, monthid) &&
            const DeepCollectionEquality()
                .equals(other.monthamount, monthamount) &&
            const DeepCollectionEquality().equals(other.feestatus, feestatus) &&
            const DeepCollectionEquality().equals(other.fines, fines) &&
            const DeepCollectionEquality().equals(other.lastdue, lastdue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(student),
      const DeepCollectionEquality().hash(StudentFeesClass),
      const DeepCollectionEquality().hash(monthname),
      const DeepCollectionEquality().hash(monthid),
      const DeepCollectionEquality().hash(monthamount),
      const DeepCollectionEquality().hash(feestatus),
      const DeepCollectionEquality().hash(fines),
      const DeepCollectionEquality().hash(lastdue));

  @JsonKey(ignore: true)
  @override
  _$StudentFeesCopyWith<_StudentFees> get copyWith =>
      __$StudentFeesCopyWithImpl<_StudentFees>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StudentFeesToJson(this);
  }
}

abstract class _StudentFees implements StudentFees {
  const factory _StudentFees(
      {required String student,
      @JsonKey(name: "class") required String StudentFeesClass,
      List<String>? monthname,
      List<int>? monthid,
      List<int>? monthamount,
      List<String>? feestatus,
      int? fines,
      int? lastdue}) = _$_StudentFees;

  factory _StudentFees.fromJson(Map<String, dynamic> json) =
      _$_StudentFees.fromJson;

  @override
  String get student;
  @override
  @JsonKey(name: "class")
  String get StudentFeesClass;
  @override
  List<String>? get monthname;
  @override
  List<int>? get monthid;
  @override
  List<int>? get monthamount;
  @override
  List<String>? get feestatus;
  @override
  int? get fines;
  @override
  int? get lastdue;
  @override
  @JsonKey(ignore: true)
  _$StudentFeesCopyWith<_StudentFees> get copyWith =>
      throw _privateConstructorUsedError;
}
