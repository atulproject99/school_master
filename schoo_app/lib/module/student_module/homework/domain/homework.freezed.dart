// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'homework.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Homework _$HomeworkFromJson(Map<String, dynamic> json) {
  return _Homework.fromJson(json);
}

/// @nodoc
class _$HomeworkTearOff {
  const _$HomeworkTearOff();

  _Homework call(
      {int? id,
      @JsonKey(name: "class") String? homeworkClass,
      String? subject,
      String? pdf,
      String? videolink,
      String? date,
      String? responsestatus}) {
    return _Homework(
      id: id,
      homeworkClass: homeworkClass,
      subject: subject,
      pdf: pdf,
      videolink: videolink,
      date: date,
      responsestatus: responsestatus,
    );
  }

  Homework fromJson(Map<String, Object?> json) {
    return Homework.fromJson(json);
  }
}

/// @nodoc
const $Homework = _$HomeworkTearOff();

/// @nodoc
mixin _$Homework {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "class")
  String? get homeworkClass => throw _privateConstructorUsedError;
  String? get subject => throw _privateConstructorUsedError;
  String? get pdf => throw _privateConstructorUsedError;
  String? get videolink => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get responsestatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeworkCopyWith<Homework> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeworkCopyWith<$Res> {
  factory $HomeworkCopyWith(Homework value, $Res Function(Homework) then) =
      _$HomeworkCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      @JsonKey(name: "class") String? homeworkClass,
      String? subject,
      String? pdf,
      String? videolink,
      String? date,
      String? responsestatus});
}

/// @nodoc
class _$HomeworkCopyWithImpl<$Res> implements $HomeworkCopyWith<$Res> {
  _$HomeworkCopyWithImpl(this._value, this._then);

  final Homework _value;
  // ignore: unused_field
  final $Res Function(Homework) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? homeworkClass = freezed,
    Object? subject = freezed,
    Object? pdf = freezed,
    Object? videolink = freezed,
    Object? date = freezed,
    Object? responsestatus = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      homeworkClass: homeworkClass == freezed
          ? _value.homeworkClass
          : homeworkClass // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      pdf: pdf == freezed
          ? _value.pdf
          : pdf // ignore: cast_nullable_to_non_nullable
              as String?,
      videolink: videolink == freezed
          ? _value.videolink
          : videolink // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      responsestatus: responsestatus == freezed
          ? _value.responsestatus
          : responsestatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$HomeworkCopyWith<$Res> implements $HomeworkCopyWith<$Res> {
  factory _$HomeworkCopyWith(_Homework value, $Res Function(_Homework) then) =
      __$HomeworkCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      @JsonKey(name: "class") String? homeworkClass,
      String? subject,
      String? pdf,
      String? videolink,
      String? date,
      String? responsestatus});
}

/// @nodoc
class __$HomeworkCopyWithImpl<$Res> extends _$HomeworkCopyWithImpl<$Res>
    implements _$HomeworkCopyWith<$Res> {
  __$HomeworkCopyWithImpl(_Homework _value, $Res Function(_Homework) _then)
      : super(_value, (v) => _then(v as _Homework));

  @override
  _Homework get _value => super._value as _Homework;

  @override
  $Res call({
    Object? id = freezed,
    Object? homeworkClass = freezed,
    Object? subject = freezed,
    Object? pdf = freezed,
    Object? videolink = freezed,
    Object? date = freezed,
    Object? responsestatus = freezed,
  }) {
    return _then(_Homework(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      homeworkClass: homeworkClass == freezed
          ? _value.homeworkClass
          : homeworkClass // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      pdf: pdf == freezed
          ? _value.pdf
          : pdf // ignore: cast_nullable_to_non_nullable
              as String?,
      videolink: videolink == freezed
          ? _value.videolink
          : videolink // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      responsestatus: responsestatus == freezed
          ? _value.responsestatus
          : responsestatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Homework implements _Homework {
  const _$_Homework(
      {this.id,
      @JsonKey(name: "class") this.homeworkClass,
      this.subject,
      this.pdf,
      this.videolink,
      this.date,
      this.responsestatus});

  factory _$_Homework.fromJson(Map<String, dynamic> json) =>
      _$$_HomeworkFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "class")
  final String? homeworkClass;
  @override
  final String? subject;
  @override
  final String? pdf;
  @override
  final String? videolink;
  @override
  final String? date;
  @override
  final String? responsestatus;

  @override
  String toString() {
    return 'Homework(id: $id, homeworkClass: $homeworkClass, subject: $subject, pdf: $pdf, videolink: $videolink, date: $date, responsestatus: $responsestatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Homework &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.homeworkClass, homeworkClass) &&
            const DeepCollectionEquality().equals(other.subject, subject) &&
            const DeepCollectionEquality().equals(other.pdf, pdf) &&
            const DeepCollectionEquality().equals(other.videolink, videolink) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality()
                .equals(other.responsestatus, responsestatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(homeworkClass),
      const DeepCollectionEquality().hash(subject),
      const DeepCollectionEquality().hash(pdf),
      const DeepCollectionEquality().hash(videolink),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(responsestatus));

  @JsonKey(ignore: true)
  @override
  _$HomeworkCopyWith<_Homework> get copyWith =>
      __$HomeworkCopyWithImpl<_Homework>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeworkToJson(this);
  }
}

abstract class _Homework implements Homework {
  const factory _Homework(
      {int? id,
      @JsonKey(name: "class") String? homeworkClass,
      String? subject,
      String? pdf,
      String? videolink,
      String? date,
      String? responsestatus}) = _$_Homework;

  factory _Homework.fromJson(Map<String, dynamic> json) = _$_Homework.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "class")
  String? get homeworkClass;
  @override
  String? get subject;
  @override
  String? get pdf;
  @override
  String? get videolink;
  @override
  String? get date;
  @override
  String? get responsestatus;
  @override
  @JsonKey(ignore: true)
  _$HomeworkCopyWith<_Homework> get copyWith =>
      throw _privateConstructorUsedError;
}
