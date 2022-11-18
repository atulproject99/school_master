// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transport_amount.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransportAmount _$TransportAmountFromJson(Map<String, dynamic> json) {
  return _TransportAmount.fromJson(json);
}

/// @nodoc
class _$TransportAmountTearOff {
  const _$TransportAmountTearOff();

  _TransportAmount call(
      {required String student,
      @JsonKey(name: "class") String? studentClass,
      @JsonKey(name: "apllied_for_transport") String? aplliedForTransport,
      @JsonKey(name: "transport_fee") int? transportFee,
      List<String>? monthname,
      List<int>? monthid,
      List<String>? feestatus,
      int? lastdue}) {
    return _TransportAmount(
      student: student,
      studentClass: studentClass,
      aplliedForTransport: aplliedForTransport,
      transportFee: transportFee,
      monthname: monthname,
      monthid: monthid,
      feestatus: feestatus,
      lastdue: lastdue,
    );
  }

  TransportAmount fromJson(Map<String, Object?> json) {
    return TransportAmount.fromJson(json);
  }
}

/// @nodoc
const $TransportAmount = _$TransportAmountTearOff();

/// @nodoc
mixin _$TransportAmount {
  String get student => throw _privateConstructorUsedError;
  @JsonKey(name: "class")
  String? get studentClass => throw _privateConstructorUsedError;
  @JsonKey(name: "apllied_for_transport")
  String? get aplliedForTransport => throw _privateConstructorUsedError;
  @JsonKey(name: "transport_fee")
  int? get transportFee => throw _privateConstructorUsedError;
  List<String>? get monthname => throw _privateConstructorUsedError;
  List<int>? get monthid => throw _privateConstructorUsedError;
  List<String>? get feestatus => throw _privateConstructorUsedError;
  int? get lastdue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransportAmountCopyWith<TransportAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransportAmountCopyWith<$Res> {
  factory $TransportAmountCopyWith(
          TransportAmount value, $Res Function(TransportAmount) then) =
      _$TransportAmountCopyWithImpl<$Res>;
  $Res call(
      {String student,
      @JsonKey(name: "class") String? studentClass,
      @JsonKey(name: "apllied_for_transport") String? aplliedForTransport,
      @JsonKey(name: "transport_fee") int? transportFee,
      List<String>? monthname,
      List<int>? monthid,
      List<String>? feestatus,
      int? lastdue});
}

/// @nodoc
class _$TransportAmountCopyWithImpl<$Res>
    implements $TransportAmountCopyWith<$Res> {
  _$TransportAmountCopyWithImpl(this._value, this._then);

  final TransportAmount _value;
  // ignore: unused_field
  final $Res Function(TransportAmount) _then;

  @override
  $Res call({
    Object? student = freezed,
    Object? studentClass = freezed,
    Object? aplliedForTransport = freezed,
    Object? transportFee = freezed,
    Object? monthname = freezed,
    Object? monthid = freezed,
    Object? feestatus = freezed,
    Object? lastdue = freezed,
  }) {
    return _then(_value.copyWith(
      student: student == freezed
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as String,
      studentClass: studentClass == freezed
          ? _value.studentClass
          : studentClass // ignore: cast_nullable_to_non_nullable
              as String?,
      aplliedForTransport: aplliedForTransport == freezed
          ? _value.aplliedForTransport
          : aplliedForTransport // ignore: cast_nullable_to_non_nullable
              as String?,
      transportFee: transportFee == freezed
          ? _value.transportFee
          : transportFee // ignore: cast_nullable_to_non_nullable
              as int?,
      monthname: monthname == freezed
          ? _value.monthname
          : monthname // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      monthid: monthid == freezed
          ? _value.monthid
          : monthid // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      feestatus: feestatus == freezed
          ? _value.feestatus
          : feestatus // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      lastdue: lastdue == freezed
          ? _value.lastdue
          : lastdue // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$TransportAmountCopyWith<$Res>
    implements $TransportAmountCopyWith<$Res> {
  factory _$TransportAmountCopyWith(
          _TransportAmount value, $Res Function(_TransportAmount) then) =
      __$TransportAmountCopyWithImpl<$Res>;
  @override
  $Res call(
      {String student,
      @JsonKey(name: "class") String? studentClass,
      @JsonKey(name: "apllied_for_transport") String? aplliedForTransport,
      @JsonKey(name: "transport_fee") int? transportFee,
      List<String>? monthname,
      List<int>? monthid,
      List<String>? feestatus,
      int? lastdue});
}

/// @nodoc
class __$TransportAmountCopyWithImpl<$Res>
    extends _$TransportAmountCopyWithImpl<$Res>
    implements _$TransportAmountCopyWith<$Res> {
  __$TransportAmountCopyWithImpl(
      _TransportAmount _value, $Res Function(_TransportAmount) _then)
      : super(_value, (v) => _then(v as _TransportAmount));

  @override
  _TransportAmount get _value => super._value as _TransportAmount;

  @override
  $Res call({
    Object? student = freezed,
    Object? studentClass = freezed,
    Object? aplliedForTransport = freezed,
    Object? transportFee = freezed,
    Object? monthname = freezed,
    Object? monthid = freezed,
    Object? feestatus = freezed,
    Object? lastdue = freezed,
  }) {
    return _then(_TransportAmount(
      student: student == freezed
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as String,
      studentClass: studentClass == freezed
          ? _value.studentClass
          : studentClass // ignore: cast_nullable_to_non_nullable
              as String?,
      aplliedForTransport: aplliedForTransport == freezed
          ? _value.aplliedForTransport
          : aplliedForTransport // ignore: cast_nullable_to_non_nullable
              as String?,
      transportFee: transportFee == freezed
          ? _value.transportFee
          : transportFee // ignore: cast_nullable_to_non_nullable
              as int?,
      monthname: monthname == freezed
          ? _value.monthname
          : monthname // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      monthid: monthid == freezed
          ? _value.monthid
          : monthid // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      feestatus: feestatus == freezed
          ? _value.feestatus
          : feestatus // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      lastdue: lastdue == freezed
          ? _value.lastdue
          : lastdue // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransportAmount implements _TransportAmount {
  const _$_TransportAmount(
      {required this.student,
      @JsonKey(name: "class") this.studentClass,
      @JsonKey(name: "apllied_for_transport") this.aplliedForTransport,
      @JsonKey(name: "transport_fee") this.transportFee,
      this.monthname,
      this.monthid,
      this.feestatus,
      this.lastdue});

  factory _$_TransportAmount.fromJson(Map<String, dynamic> json) =>
      _$$_TransportAmountFromJson(json);

  @override
  final String student;
  @override
  @JsonKey(name: "class")
  final String? studentClass;
  @override
  @JsonKey(name: "apllied_for_transport")
  final String? aplliedForTransport;
  @override
  @JsonKey(name: "transport_fee")
  final int? transportFee;
  @override
  final List<String>? monthname;
  @override
  final List<int>? monthid;
  @override
  final List<String>? feestatus;
  @override
  final int? lastdue;

  @override
  String toString() {
    return 'TransportAmount(student: $student, studentClass: $studentClass, aplliedForTransport: $aplliedForTransport, transportFee: $transportFee, monthname: $monthname, monthid: $monthid, feestatus: $feestatus, lastdue: $lastdue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TransportAmount &&
            const DeepCollectionEquality().equals(other.student, student) &&
            const DeepCollectionEquality()
                .equals(other.studentClass, studentClass) &&
            const DeepCollectionEquality()
                .equals(other.aplliedForTransport, aplliedForTransport) &&
            const DeepCollectionEquality()
                .equals(other.transportFee, transportFee) &&
            const DeepCollectionEquality().equals(other.monthname, monthname) &&
            const DeepCollectionEquality().equals(other.monthid, monthid) &&
            const DeepCollectionEquality().equals(other.feestatus, feestatus) &&
            const DeepCollectionEquality().equals(other.lastdue, lastdue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(student),
      const DeepCollectionEquality().hash(studentClass),
      const DeepCollectionEquality().hash(aplliedForTransport),
      const DeepCollectionEquality().hash(transportFee),
      const DeepCollectionEquality().hash(monthname),
      const DeepCollectionEquality().hash(monthid),
      const DeepCollectionEquality().hash(feestatus),
      const DeepCollectionEquality().hash(lastdue));

  @JsonKey(ignore: true)
  @override
  _$TransportAmountCopyWith<_TransportAmount> get copyWith =>
      __$TransportAmountCopyWithImpl<_TransportAmount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransportAmountToJson(this);
  }
}

abstract class _TransportAmount implements TransportAmount {
  const factory _TransportAmount(
      {required String student,
      @JsonKey(name: "class") String? studentClass,
      @JsonKey(name: "apllied_for_transport") String? aplliedForTransport,
      @JsonKey(name: "transport_fee") int? transportFee,
      List<String>? monthname,
      List<int>? monthid,
      List<String>? feestatus,
      int? lastdue}) = _$_TransportAmount;

  factory _TransportAmount.fromJson(Map<String, dynamic> json) =
      _$_TransportAmount.fromJson;

  @override
  String get student;
  @override
  @JsonKey(name: "class")
  String? get studentClass;
  @override
  @JsonKey(name: "apllied_for_transport")
  String? get aplliedForTransport;
  @override
  @JsonKey(name: "transport_fee")
  int? get transportFee;
  @override
  List<String>? get monthname;
  @override
  List<int>? get monthid;
  @override
  List<String>? get feestatus;
  @override
  int? get lastdue;
  @override
  @JsonKey(ignore: true)
  _$TransportAmountCopyWith<_TransportAmount> get copyWith =>
      throw _privateConstructorUsedError;
}
