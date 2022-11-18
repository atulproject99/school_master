// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'teacher_complain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TeacherComplain _$TeacherComplainFromJson(Map<String, dynamic> json) {
  return _TeacherComplain.fromJson(json);
}

/// @nodoc
class _$TeacherComplainTearOff {
  const _$TeacherComplainTearOff();

  _TeacherComplain call(
      {String? complintsby,
      String? complaints,
      String? staffresponse,
      DateTime? date}) {
    return _TeacherComplain(
      complintsby: complintsby,
      complaints: complaints,
      staffresponse: staffresponse,
      date: date,
    );
  }

  TeacherComplain fromJson(Map<String, Object?> json) {
    return TeacherComplain.fromJson(json);
  }
}

/// @nodoc
const $TeacherComplain = _$TeacherComplainTearOff();

/// @nodoc
mixin _$TeacherComplain {
  String? get complintsby => throw _privateConstructorUsedError;
  String? get complaints => throw _privateConstructorUsedError;
  String? get staffresponse => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeacherComplainCopyWith<TeacherComplain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherComplainCopyWith<$Res> {
  factory $TeacherComplainCopyWith(
          TeacherComplain value, $Res Function(TeacherComplain) then) =
      _$TeacherComplainCopyWithImpl<$Res>;
  $Res call(
      {String? complintsby,
      String? complaints,
      String? staffresponse,
      DateTime? date});
}

/// @nodoc
class _$TeacherComplainCopyWithImpl<$Res>
    implements $TeacherComplainCopyWith<$Res> {
  _$TeacherComplainCopyWithImpl(this._value, this._then);

  final TeacherComplain _value;
  // ignore: unused_field
  final $Res Function(TeacherComplain) _then;

  @override
  $Res call({
    Object? complintsby = freezed,
    Object? complaints = freezed,
    Object? staffresponse = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      complintsby: complintsby == freezed
          ? _value.complintsby
          : complintsby // ignore: cast_nullable_to_non_nullable
              as String?,
      complaints: complaints == freezed
          ? _value.complaints
          : complaints // ignore: cast_nullable_to_non_nullable
              as String?,
      staffresponse: staffresponse == freezed
          ? _value.staffresponse
          : staffresponse // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$TeacherComplainCopyWith<$Res>
    implements $TeacherComplainCopyWith<$Res> {
  factory _$TeacherComplainCopyWith(
          _TeacherComplain value, $Res Function(_TeacherComplain) then) =
      __$TeacherComplainCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? complintsby,
      String? complaints,
      String? staffresponse,
      DateTime? date});
}

/// @nodoc
class __$TeacherComplainCopyWithImpl<$Res>
    extends _$TeacherComplainCopyWithImpl<$Res>
    implements _$TeacherComplainCopyWith<$Res> {
  __$TeacherComplainCopyWithImpl(
      _TeacherComplain _value, $Res Function(_TeacherComplain) _then)
      : super(_value, (v) => _then(v as _TeacherComplain));

  @override
  _TeacherComplain get _value => super._value as _TeacherComplain;

  @override
  $Res call({
    Object? complintsby = freezed,
    Object? complaints = freezed,
    Object? staffresponse = freezed,
    Object? date = freezed,
  }) {
    return _then(_TeacherComplain(
      complintsby: complintsby == freezed
          ? _value.complintsby
          : complintsby // ignore: cast_nullable_to_non_nullable
              as String?,
      complaints: complaints == freezed
          ? _value.complaints
          : complaints // ignore: cast_nullable_to_non_nullable
              as String?,
      staffresponse: staffresponse == freezed
          ? _value.staffresponse
          : staffresponse // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TeacherComplain implements _TeacherComplain {
  const _$_TeacherComplain(
      {this.complintsby, this.complaints, this.staffresponse, this.date});

  factory _$_TeacherComplain.fromJson(Map<String, dynamic> json) =>
      _$$_TeacherComplainFromJson(json);

  @override
  final String? complintsby;
  @override
  final String? complaints;
  @override
  final String? staffresponse;
  @override
  final DateTime? date;

  @override
  String toString() {
    return 'TeacherComplain(complintsby: $complintsby, complaints: $complaints, staffresponse: $staffresponse, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TeacherComplain &&
            const DeepCollectionEquality()
                .equals(other.complintsby, complintsby) &&
            const DeepCollectionEquality()
                .equals(other.complaints, complaints) &&
            const DeepCollectionEquality()
                .equals(other.staffresponse, staffresponse) &&
            const DeepCollectionEquality().equals(other.date, date));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(complintsby),
      const DeepCollectionEquality().hash(complaints),
      const DeepCollectionEquality().hash(staffresponse),
      const DeepCollectionEquality().hash(date));

  @JsonKey(ignore: true)
  @override
  _$TeacherComplainCopyWith<_TeacherComplain> get copyWith =>
      __$TeacherComplainCopyWithImpl<_TeacherComplain>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TeacherComplainToJson(this);
  }
}

abstract class _TeacherComplain implements TeacherComplain {
  const factory _TeacherComplain(
      {String? complintsby,
      String? complaints,
      String? staffresponse,
      DateTime? date}) = _$_TeacherComplain;

  factory _TeacherComplain.fromJson(Map<String, dynamic> json) =
      _$_TeacherComplain.fromJson;

  @override
  String? get complintsby;
  @override
  String? get complaints;
  @override
  String? get staffresponse;
  @override
  DateTime? get date;
  @override
  @JsonKey(ignore: true)
  _$TeacherComplainCopyWith<_TeacherComplain> get copyWith =>
      throw _privateConstructorUsedError;
}
