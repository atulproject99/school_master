// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sechool_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SchoolDetails _$SchoolDetailsFromJson(Map<String, dynamic> json) {
  return _SchoolDetails.fromJson(json);
}

/// @nodoc
class _$SchoolDetailsTearOff {
  const _$SchoolDetailsTearOff();

  _SchoolDetails call(
      {@JsonKey(name: "branch_name") String? branchName,
      @JsonKey(name: "upi_id") String? upiKey,
      String? privacypolicy,
      String? about,
      String? logo,
      @JsonKey(name: "contact_us") String? contactUs}) {
    return _SchoolDetails(
      branchName: branchName,
      upiKey: upiKey,
      privacypolicy: privacypolicy,
      about: about,
      logo: logo,
      contactUs: contactUs,
    );
  }

  SchoolDetails fromJson(Map<String, Object?> json) {
    return SchoolDetails.fromJson(json);
  }
}

/// @nodoc
const $SchoolDetails = _$SchoolDetailsTearOff();

/// @nodoc
mixin _$SchoolDetails {
  @JsonKey(name: "branch_name")
  String? get branchName => throw _privateConstructorUsedError;
  @JsonKey(name: "upi_id")
  String? get upiKey => throw _privateConstructorUsedError;
  String? get privacypolicy => throw _privateConstructorUsedError;
  String? get about => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;
  @JsonKey(name: "contact_us")
  String? get contactUs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SchoolDetailsCopyWith<SchoolDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchoolDetailsCopyWith<$Res> {
  factory $SchoolDetailsCopyWith(
          SchoolDetails value, $Res Function(SchoolDetails) then) =
      _$SchoolDetailsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "branch_name") String? branchName,
      @JsonKey(name: "upi_id") String? upiKey,
      String? privacypolicy,
      String? about,
      String? logo,
      @JsonKey(name: "contact_us") String? contactUs});
}

/// @nodoc
class _$SchoolDetailsCopyWithImpl<$Res>
    implements $SchoolDetailsCopyWith<$Res> {
  _$SchoolDetailsCopyWithImpl(this._value, this._then);

  final SchoolDetails _value;
  // ignore: unused_field
  final $Res Function(SchoolDetails) _then;

  @override
  $Res call({
    Object? branchName = freezed,
    Object? upiKey = freezed,
    Object? privacypolicy = freezed,
    Object? about = freezed,
    Object? logo = freezed,
    Object? contactUs = freezed,
  }) {
    return _then(_value.copyWith(
      branchName: branchName == freezed
          ? _value.branchName
          : branchName // ignore: cast_nullable_to_non_nullable
              as String?,
      upiKey: upiKey == freezed
          ? _value.upiKey
          : upiKey // ignore: cast_nullable_to_non_nullable
              as String?,
      privacypolicy: privacypolicy == freezed
          ? _value.privacypolicy
          : privacypolicy // ignore: cast_nullable_to_non_nullable
              as String?,
      about: about == freezed
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      contactUs: contactUs == freezed
          ? _value.contactUs
          : contactUs // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SchoolDetailsCopyWith<$Res>
    implements $SchoolDetailsCopyWith<$Res> {
  factory _$SchoolDetailsCopyWith(
          _SchoolDetails value, $Res Function(_SchoolDetails) then) =
      __$SchoolDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "branch_name") String? branchName,
      @JsonKey(name: "upi_id") String? upiKey,
      String? privacypolicy,
      String? about,
      String? logo,
      @JsonKey(name: "contact_us") String? contactUs});
}

/// @nodoc
class __$SchoolDetailsCopyWithImpl<$Res>
    extends _$SchoolDetailsCopyWithImpl<$Res>
    implements _$SchoolDetailsCopyWith<$Res> {
  __$SchoolDetailsCopyWithImpl(
      _SchoolDetails _value, $Res Function(_SchoolDetails) _then)
      : super(_value, (v) => _then(v as _SchoolDetails));

  @override
  _SchoolDetails get _value => super._value as _SchoolDetails;

  @override
  $Res call({
    Object? branchName = freezed,
    Object? upiKey = freezed,
    Object? privacypolicy = freezed,
    Object? about = freezed,
    Object? logo = freezed,
    Object? contactUs = freezed,
  }) {
    return _then(_SchoolDetails(
      branchName: branchName == freezed
          ? _value.branchName
          : branchName // ignore: cast_nullable_to_non_nullable
              as String?,
      upiKey: upiKey == freezed
          ? _value.upiKey
          : upiKey // ignore: cast_nullable_to_non_nullable
              as String?,
      privacypolicy: privacypolicy == freezed
          ? _value.privacypolicy
          : privacypolicy // ignore: cast_nullable_to_non_nullable
              as String?,
      about: about == freezed
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      contactUs: contactUs == freezed
          ? _value.contactUs
          : contactUs // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SchoolDetails implements _SchoolDetails {
  const _$_SchoolDetails(
      {@JsonKey(name: "branch_name") this.branchName,
      @JsonKey(name: "upi_id") this.upiKey,
      this.privacypolicy,
      this.about,
      this.logo,
      @JsonKey(name: "contact_us") this.contactUs});

  factory _$_SchoolDetails.fromJson(Map<String, dynamic> json) =>
      _$$_SchoolDetailsFromJson(json);

  @override
  @JsonKey(name: "branch_name")
  final String? branchName;
  @override
  @JsonKey(name: "upi_id")
  final String? upiKey;
  @override
  final String? privacypolicy;
  @override
  final String? about;
  @override
  final String? logo;
  @override
  @JsonKey(name: "contact_us")
  final String? contactUs;

  @override
  String toString() {
    return 'SchoolDetails(branchName: $branchName, upiKey: $upiKey, privacypolicy: $privacypolicy, about: $about, logo: $logo, contactUs: $contactUs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SchoolDetails &&
            const DeepCollectionEquality()
                .equals(other.branchName, branchName) &&
            const DeepCollectionEquality().equals(other.upiKey, upiKey) &&
            const DeepCollectionEquality()
                .equals(other.privacypolicy, privacypolicy) &&
            const DeepCollectionEquality().equals(other.about, about) &&
            const DeepCollectionEquality().equals(other.logo, logo) &&
            const DeepCollectionEquality().equals(other.contactUs, contactUs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(branchName),
      const DeepCollectionEquality().hash(upiKey),
      const DeepCollectionEquality().hash(privacypolicy),
      const DeepCollectionEquality().hash(about),
      const DeepCollectionEquality().hash(logo),
      const DeepCollectionEquality().hash(contactUs));

  @JsonKey(ignore: true)
  @override
  _$SchoolDetailsCopyWith<_SchoolDetails> get copyWith =>
      __$SchoolDetailsCopyWithImpl<_SchoolDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SchoolDetailsToJson(this);
  }
}

abstract class _SchoolDetails implements SchoolDetails {
  const factory _SchoolDetails(
      {@JsonKey(name: "branch_name") String? branchName,
      @JsonKey(name: "upi_id") String? upiKey,
      String? privacypolicy,
      String? about,
      String? logo,
      @JsonKey(name: "contact_us") String? contactUs}) = _$_SchoolDetails;

  factory _SchoolDetails.fromJson(Map<String, dynamic> json) =
      _$_SchoolDetails.fromJson;

  @override
  @JsonKey(name: "branch_name")
  String? get branchName;
  @override
  @JsonKey(name: "upi_id")
  String? get upiKey;
  @override
  String? get privacypolicy;
  @override
  String? get about;
  @override
  String? get logo;
  @override
  @JsonKey(name: "contact_us")
  String? get contactUs;
  @override
  @JsonKey(ignore: true)
  _$SchoolDetailsCopyWith<_SchoolDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
