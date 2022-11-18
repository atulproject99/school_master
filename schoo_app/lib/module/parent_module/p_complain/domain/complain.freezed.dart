// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'complain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Complain _$ComplainFromJson(Map<String, dynamic> json) {
  return _Complain.fromJson(json);
}

/// @nodoc
class _$ComplainTearOff {
  const _$ComplainTearOff();

  _Complain call(
      {@JsonKey(name: "compaintid") required int complaintid,
      required String complaintdate,
      String? complaint,
      String? complaintby,
      String? parentsresponse}) {
    return _Complain(
      complaintid: complaintid,
      complaintdate: complaintdate,
      complaint: complaint,
      complaintby: complaintby,
      parentsresponse: parentsresponse,
    );
  }

  Complain fromJson(Map<String, Object?> json) {
    return Complain.fromJson(json);
  }
}

/// @nodoc
const $Complain = _$ComplainTearOff();

/// @nodoc
mixin _$Complain {
  @JsonKey(name: "compaintid")
  int get complaintid => throw _privateConstructorUsedError;
  String get complaintdate => throw _privateConstructorUsedError;
  String? get complaint => throw _privateConstructorUsedError;
  String? get complaintby => throw _privateConstructorUsedError;
  String? get parentsresponse => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComplainCopyWith<Complain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComplainCopyWith<$Res> {
  factory $ComplainCopyWith(Complain value, $Res Function(Complain) then) =
      _$ComplainCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "compaintid") int complaintid,
      String complaintdate,
      String? complaint,
      String? complaintby,
      String? parentsresponse});
}

/// @nodoc
class _$ComplainCopyWithImpl<$Res> implements $ComplainCopyWith<$Res> {
  _$ComplainCopyWithImpl(this._value, this._then);

  final Complain _value;
  // ignore: unused_field
  final $Res Function(Complain) _then;

  @override
  $Res call({
    Object? complaintid = freezed,
    Object? complaintdate = freezed,
    Object? complaint = freezed,
    Object? complaintby = freezed,
    Object? parentsresponse = freezed,
  }) {
    return _then(_value.copyWith(
      complaintid: complaintid == freezed
          ? _value.complaintid
          : complaintid // ignore: cast_nullable_to_non_nullable
              as int,
      complaintdate: complaintdate == freezed
          ? _value.complaintdate
          : complaintdate // ignore: cast_nullable_to_non_nullable
              as String,
      complaint: complaint == freezed
          ? _value.complaint
          : complaint // ignore: cast_nullable_to_non_nullable
              as String?,
      complaintby: complaintby == freezed
          ? _value.complaintby
          : complaintby // ignore: cast_nullable_to_non_nullable
              as String?,
      parentsresponse: parentsresponse == freezed
          ? _value.parentsresponse
          : parentsresponse // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ComplainCopyWith<$Res> implements $ComplainCopyWith<$Res> {
  factory _$ComplainCopyWith(_Complain value, $Res Function(_Complain) then) =
      __$ComplainCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "compaintid") int complaintid,
      String complaintdate,
      String? complaint,
      String? complaintby,
      String? parentsresponse});
}

/// @nodoc
class __$ComplainCopyWithImpl<$Res> extends _$ComplainCopyWithImpl<$Res>
    implements _$ComplainCopyWith<$Res> {
  __$ComplainCopyWithImpl(_Complain _value, $Res Function(_Complain) _then)
      : super(_value, (v) => _then(v as _Complain));

  @override
  _Complain get _value => super._value as _Complain;

  @override
  $Res call({
    Object? complaintid = freezed,
    Object? complaintdate = freezed,
    Object? complaint = freezed,
    Object? complaintby = freezed,
    Object? parentsresponse = freezed,
  }) {
    return _then(_Complain(
      complaintid: complaintid == freezed
          ? _value.complaintid
          : complaintid // ignore: cast_nullable_to_non_nullable
              as int,
      complaintdate: complaintdate == freezed
          ? _value.complaintdate
          : complaintdate // ignore: cast_nullable_to_non_nullable
              as String,
      complaint: complaint == freezed
          ? _value.complaint
          : complaint // ignore: cast_nullable_to_non_nullable
              as String?,
      complaintby: complaintby == freezed
          ? _value.complaintby
          : complaintby // ignore: cast_nullable_to_non_nullable
              as String?,
      parentsresponse: parentsresponse == freezed
          ? _value.parentsresponse
          : parentsresponse // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Complain implements _Complain {
  const _$_Complain(
      {@JsonKey(name: "compaintid") required this.complaintid,
      required this.complaintdate,
      this.complaint,
      this.complaintby,
      this.parentsresponse});

  factory _$_Complain.fromJson(Map<String, dynamic> json) =>
      _$$_ComplainFromJson(json);

  @override
  @JsonKey(name: "compaintid")
  final int complaintid;
  @override
  final String complaintdate;
  @override
  final String? complaint;
  @override
  final String? complaintby;
  @override
  final String? parentsresponse;

  @override
  String toString() {
    return 'Complain(complaintid: $complaintid, complaintdate: $complaintdate, complaint: $complaint, complaintby: $complaintby, parentsresponse: $parentsresponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Complain &&
            const DeepCollectionEquality()
                .equals(other.complaintid, complaintid) &&
            const DeepCollectionEquality()
                .equals(other.complaintdate, complaintdate) &&
            const DeepCollectionEquality().equals(other.complaint, complaint) &&
            const DeepCollectionEquality()
                .equals(other.complaintby, complaintby) &&
            const DeepCollectionEquality()
                .equals(other.parentsresponse, parentsresponse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(complaintid),
      const DeepCollectionEquality().hash(complaintdate),
      const DeepCollectionEquality().hash(complaint),
      const DeepCollectionEquality().hash(complaintby),
      const DeepCollectionEquality().hash(parentsresponse));

  @JsonKey(ignore: true)
  @override
  _$ComplainCopyWith<_Complain> get copyWith =>
      __$ComplainCopyWithImpl<_Complain>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComplainToJson(this);
  }
}

abstract class _Complain implements Complain {
  const factory _Complain(
      {@JsonKey(name: "compaintid") required int complaintid,
      required String complaintdate,
      String? complaint,
      String? complaintby,
      String? parentsresponse}) = _$_Complain;

  factory _Complain.fromJson(Map<String, dynamic> json) = _$_Complain.fromJson;

  @override
  @JsonKey(name: "compaintid")
  int get complaintid;
  @override
  String get complaintdate;
  @override
  String? get complaint;
  @override
  String? get complaintby;
  @override
  String? get parentsresponse;
  @override
  @JsonKey(ignore: true)
  _$ComplainCopyWith<_Complain> get copyWith =>
      throw _privateConstructorUsedError;
}
