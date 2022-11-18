// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notice_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NoticeData _$NoticeDataFromJson(Map<String, dynamic> json) {
  return _NoticeData.fromJson(json);
}

/// @nodoc
class _$NoticeDataTearOff {
  const _$NoticeDataTearOff();

  _NoticeData call(
      {required int id,
      required String session,
      @JsonKey(name: "notice_date") required DateTime noticeDate,
      @JsonKey(name: "notice_heading") required String noticeHeading,
      @JsonKey(name: "notice_details") required String noticeDetails}) {
    return _NoticeData(
      id: id,
      session: session,
      noticeDate: noticeDate,
      noticeHeading: noticeHeading,
      noticeDetails: noticeDetails,
    );
  }

  NoticeData fromJson(Map<String, Object?> json) {
    return NoticeData.fromJson(json);
  }
}

/// @nodoc
const $NoticeData = _$NoticeDataTearOff();

/// @nodoc
mixin _$NoticeData {
  int get id => throw _privateConstructorUsedError;
  String get session => throw _privateConstructorUsedError;
  @JsonKey(name: "notice_date")
  DateTime get noticeDate => throw _privateConstructorUsedError;
  @JsonKey(name: "notice_heading")
  String get noticeHeading => throw _privateConstructorUsedError;
  @JsonKey(name: "notice_details")
  String get noticeDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoticeDataCopyWith<NoticeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeDataCopyWith<$Res> {
  factory $NoticeDataCopyWith(
          NoticeData value, $Res Function(NoticeData) then) =
      _$NoticeDataCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String session,
      @JsonKey(name: "notice_date") DateTime noticeDate,
      @JsonKey(name: "notice_heading") String noticeHeading,
      @JsonKey(name: "notice_details") String noticeDetails});
}

/// @nodoc
class _$NoticeDataCopyWithImpl<$Res> implements $NoticeDataCopyWith<$Res> {
  _$NoticeDataCopyWithImpl(this._value, this._then);

  final NoticeData _value;
  // ignore: unused_field
  final $Res Function(NoticeData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? session = freezed,
    Object? noticeDate = freezed,
    Object? noticeHeading = freezed,
    Object? noticeDetails = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      session: session == freezed
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as String,
      noticeDate: noticeDate == freezed
          ? _value.noticeDate
          : noticeDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      noticeHeading: noticeHeading == freezed
          ? _value.noticeHeading
          : noticeHeading // ignore: cast_nullable_to_non_nullable
              as String,
      noticeDetails: noticeDetails == freezed
          ? _value.noticeDetails
          : noticeDetails // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$NoticeDataCopyWith<$Res> implements $NoticeDataCopyWith<$Res> {
  factory _$NoticeDataCopyWith(
          _NoticeData value, $Res Function(_NoticeData) then) =
      __$NoticeDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String session,
      @JsonKey(name: "notice_date") DateTime noticeDate,
      @JsonKey(name: "notice_heading") String noticeHeading,
      @JsonKey(name: "notice_details") String noticeDetails});
}

/// @nodoc
class __$NoticeDataCopyWithImpl<$Res> extends _$NoticeDataCopyWithImpl<$Res>
    implements _$NoticeDataCopyWith<$Res> {
  __$NoticeDataCopyWithImpl(
      _NoticeData _value, $Res Function(_NoticeData) _then)
      : super(_value, (v) => _then(v as _NoticeData));

  @override
  _NoticeData get _value => super._value as _NoticeData;

  @override
  $Res call({
    Object? id = freezed,
    Object? session = freezed,
    Object? noticeDate = freezed,
    Object? noticeHeading = freezed,
    Object? noticeDetails = freezed,
  }) {
    return _then(_NoticeData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      session: session == freezed
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as String,
      noticeDate: noticeDate == freezed
          ? _value.noticeDate
          : noticeDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      noticeHeading: noticeHeading == freezed
          ? _value.noticeHeading
          : noticeHeading // ignore: cast_nullable_to_non_nullable
              as String,
      noticeDetails: noticeDetails == freezed
          ? _value.noticeDetails
          : noticeDetails // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NoticeData implements _NoticeData {
  const _$_NoticeData(
      {required this.id,
      required this.session,
      @JsonKey(name: "notice_date") required this.noticeDate,
      @JsonKey(name: "notice_heading") required this.noticeHeading,
      @JsonKey(name: "notice_details") required this.noticeDetails});

  factory _$_NoticeData.fromJson(Map<String, dynamic> json) =>
      _$$_NoticeDataFromJson(json);

  @override
  final int id;
  @override
  final String session;
  @override
  @JsonKey(name: "notice_date")
  final DateTime noticeDate;
  @override
  @JsonKey(name: "notice_heading")
  final String noticeHeading;
  @override
  @JsonKey(name: "notice_details")
  final String noticeDetails;

  @override
  String toString() {
    return 'NoticeData(id: $id, session: $session, noticeDate: $noticeDate, noticeHeading: $noticeHeading, noticeDetails: $noticeDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NoticeData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.session, session) &&
            const DeepCollectionEquality()
                .equals(other.noticeDate, noticeDate) &&
            const DeepCollectionEquality()
                .equals(other.noticeHeading, noticeHeading) &&
            const DeepCollectionEquality()
                .equals(other.noticeDetails, noticeDetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(session),
      const DeepCollectionEquality().hash(noticeDate),
      const DeepCollectionEquality().hash(noticeHeading),
      const DeepCollectionEquality().hash(noticeDetails));

  @JsonKey(ignore: true)
  @override
  _$NoticeDataCopyWith<_NoticeData> get copyWith =>
      __$NoticeDataCopyWithImpl<_NoticeData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoticeDataToJson(this);
  }
}

abstract class _NoticeData implements NoticeData {
  const factory _NoticeData(
          {required int id,
          required String session,
          @JsonKey(name: "notice_date") required DateTime noticeDate,
          @JsonKey(name: "notice_heading") required String noticeHeading,
          @JsonKey(name: "notice_details") required String noticeDetails}) =
      _$_NoticeData;

  factory _NoticeData.fromJson(Map<String, dynamic> json) =
      _$_NoticeData.fromJson;

  @override
  int get id;
  @override
  String get session;
  @override
  @JsonKey(name: "notice_date")
  DateTime get noticeDate;
  @override
  @JsonKey(name: "notice_heading")
  String get noticeHeading;
  @override
  @JsonKey(name: "notice_details")
  String get noticeDetails;
  @override
  @JsonKey(ignore: true)
  _$NoticeDataCopyWith<_NoticeData> get copyWith =>
      throw _privateConstructorUsedError;
}
