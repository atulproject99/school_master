// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tstudent_complain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TStudentComplain _$TStudentComplainFromJson(Map<String, dynamic> json) {
  return _TStudentComplain.fromJson(json);
}

/// @nodoc
class _$TStudentComplainTearOff {
  const _$TStudentComplainTearOff();

  _TStudentComplain call(
      {@JsonKey(name: "student_id") required int studentId,
      String? session,
      @JsonKey(name: "student_name") String? studentName,
      @JsonKey(name: "class") String? tStudentComplainClass,
      @JsonKey(name: "complaint_by") String? complaintBy,
      String? complaint,
      @JsonKey(name: "parents_response") String? parentsResponse,
      @JsonKey(name: "date") String? complainDate,
      @JsonKey(name: "complaints_status") String? complaintsStatus}) {
    return _TStudentComplain(
      studentId: studentId,
      session: session,
      studentName: studentName,
      tStudentComplainClass: tStudentComplainClass,
      complaintBy: complaintBy,
      complaint: complaint,
      parentsResponse: parentsResponse,
      complainDate: complainDate,
      complaintsStatus: complaintsStatus,
    );
  }

  TStudentComplain fromJson(Map<String, Object?> json) {
    return TStudentComplain.fromJson(json);
  }
}

/// @nodoc
const $TStudentComplain = _$TStudentComplainTearOff();

/// @nodoc
mixin _$TStudentComplain {
  @JsonKey(name: "student_id")
  int get studentId => throw _privateConstructorUsedError;
  String? get session => throw _privateConstructorUsedError;
  @JsonKey(name: "student_name")
  String? get studentName => throw _privateConstructorUsedError;
  @JsonKey(name: "class")
  String? get tStudentComplainClass => throw _privateConstructorUsedError;
  @JsonKey(name: "complaint_by")
  String? get complaintBy => throw _privateConstructorUsedError;
  String? get complaint => throw _privateConstructorUsedError;
  @JsonKey(name: "parents_response")
  String? get parentsResponse => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  String? get complainDate => throw _privateConstructorUsedError;
  @JsonKey(name: "complaints_status")
  String? get complaintsStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TStudentComplainCopyWith<TStudentComplain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TStudentComplainCopyWith<$Res> {
  factory $TStudentComplainCopyWith(
          TStudentComplain value, $Res Function(TStudentComplain) then) =
      _$TStudentComplainCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "student_id") int studentId,
      String? session,
      @JsonKey(name: "student_name") String? studentName,
      @JsonKey(name: "class") String? tStudentComplainClass,
      @JsonKey(name: "complaint_by") String? complaintBy,
      String? complaint,
      @JsonKey(name: "parents_response") String? parentsResponse,
      @JsonKey(name: "date") String? complainDate,
      @JsonKey(name: "complaints_status") String? complaintsStatus});
}

/// @nodoc
class _$TStudentComplainCopyWithImpl<$Res>
    implements $TStudentComplainCopyWith<$Res> {
  _$TStudentComplainCopyWithImpl(this._value, this._then);

  final TStudentComplain _value;
  // ignore: unused_field
  final $Res Function(TStudentComplain) _then;

  @override
  $Res call({
    Object? studentId = freezed,
    Object? session = freezed,
    Object? studentName = freezed,
    Object? tStudentComplainClass = freezed,
    Object? complaintBy = freezed,
    Object? complaint = freezed,
    Object? parentsResponse = freezed,
    Object? complainDate = freezed,
    Object? complaintsStatus = freezed,
  }) {
    return _then(_value.copyWith(
      studentId: studentId == freezed
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int,
      session: session == freezed
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as String?,
      studentName: studentName == freezed
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String?,
      tStudentComplainClass: tStudentComplainClass == freezed
          ? _value.tStudentComplainClass
          : tStudentComplainClass // ignore: cast_nullable_to_non_nullable
              as String?,
      complaintBy: complaintBy == freezed
          ? _value.complaintBy
          : complaintBy // ignore: cast_nullable_to_non_nullable
              as String?,
      complaint: complaint == freezed
          ? _value.complaint
          : complaint // ignore: cast_nullable_to_non_nullable
              as String?,
      parentsResponse: parentsResponse == freezed
          ? _value.parentsResponse
          : parentsResponse // ignore: cast_nullable_to_non_nullable
              as String?,
      complainDate: complainDate == freezed
          ? _value.complainDate
          : complainDate // ignore: cast_nullable_to_non_nullable
              as String?,
      complaintsStatus: complaintsStatus == freezed
          ? _value.complaintsStatus
          : complaintsStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$TStudentComplainCopyWith<$Res>
    implements $TStudentComplainCopyWith<$Res> {
  factory _$TStudentComplainCopyWith(
          _TStudentComplain value, $Res Function(_TStudentComplain) then) =
      __$TStudentComplainCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "student_id") int studentId,
      String? session,
      @JsonKey(name: "student_name") String? studentName,
      @JsonKey(name: "class") String? tStudentComplainClass,
      @JsonKey(name: "complaint_by") String? complaintBy,
      String? complaint,
      @JsonKey(name: "parents_response") String? parentsResponse,
      @JsonKey(name: "date") String? complainDate,
      @JsonKey(name: "complaints_status") String? complaintsStatus});
}

/// @nodoc
class __$TStudentComplainCopyWithImpl<$Res>
    extends _$TStudentComplainCopyWithImpl<$Res>
    implements _$TStudentComplainCopyWith<$Res> {
  __$TStudentComplainCopyWithImpl(
      _TStudentComplain _value, $Res Function(_TStudentComplain) _then)
      : super(_value, (v) => _then(v as _TStudentComplain));

  @override
  _TStudentComplain get _value => super._value as _TStudentComplain;

  @override
  $Res call({
    Object? studentId = freezed,
    Object? session = freezed,
    Object? studentName = freezed,
    Object? tStudentComplainClass = freezed,
    Object? complaintBy = freezed,
    Object? complaint = freezed,
    Object? parentsResponse = freezed,
    Object? complainDate = freezed,
    Object? complaintsStatus = freezed,
  }) {
    return _then(_TStudentComplain(
      studentId: studentId == freezed
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int,
      session: session == freezed
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as String?,
      studentName: studentName == freezed
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String?,
      tStudentComplainClass: tStudentComplainClass == freezed
          ? _value.tStudentComplainClass
          : tStudentComplainClass // ignore: cast_nullable_to_non_nullable
              as String?,
      complaintBy: complaintBy == freezed
          ? _value.complaintBy
          : complaintBy // ignore: cast_nullable_to_non_nullable
              as String?,
      complaint: complaint == freezed
          ? _value.complaint
          : complaint // ignore: cast_nullable_to_non_nullable
              as String?,
      parentsResponse: parentsResponse == freezed
          ? _value.parentsResponse
          : parentsResponse // ignore: cast_nullable_to_non_nullable
              as String?,
      complainDate: complainDate == freezed
          ? _value.complainDate
          : complainDate // ignore: cast_nullable_to_non_nullable
              as String?,
      complaintsStatus: complaintsStatus == freezed
          ? _value.complaintsStatus
          : complaintsStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TStudentComplain implements _TStudentComplain {
  const _$_TStudentComplain(
      {@JsonKey(name: "student_id") required this.studentId,
      this.session,
      @JsonKey(name: "student_name") this.studentName,
      @JsonKey(name: "class") this.tStudentComplainClass,
      @JsonKey(name: "complaint_by") this.complaintBy,
      this.complaint,
      @JsonKey(name: "parents_response") this.parentsResponse,
      @JsonKey(name: "date") this.complainDate,
      @JsonKey(name: "complaints_status") this.complaintsStatus});

  factory _$_TStudentComplain.fromJson(Map<String, dynamic> json) =>
      _$$_TStudentComplainFromJson(json);

  @override
  @JsonKey(name: "student_id")
  final int studentId;
  @override
  final String? session;
  @override
  @JsonKey(name: "student_name")
  final String? studentName;
  @override
  @JsonKey(name: "class")
  final String? tStudentComplainClass;
  @override
  @JsonKey(name: "complaint_by")
  final String? complaintBy;
  @override
  final String? complaint;
  @override
  @JsonKey(name: "parents_response")
  final String? parentsResponse;
  @override
  @JsonKey(name: "date")
  final String? complainDate;
  @override
  @JsonKey(name: "complaints_status")
  final String? complaintsStatus;

  @override
  String toString() {
    return 'TStudentComplain(studentId: $studentId, session: $session, studentName: $studentName, tStudentComplainClass: $tStudentComplainClass, complaintBy: $complaintBy, complaint: $complaint, parentsResponse: $parentsResponse, complainDate: $complainDate, complaintsStatus: $complaintsStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TStudentComplain &&
            const DeepCollectionEquality().equals(other.studentId, studentId) &&
            const DeepCollectionEquality().equals(other.session, session) &&
            const DeepCollectionEquality()
                .equals(other.studentName, studentName) &&
            const DeepCollectionEquality()
                .equals(other.tStudentComplainClass, tStudentComplainClass) &&
            const DeepCollectionEquality()
                .equals(other.complaintBy, complaintBy) &&
            const DeepCollectionEquality().equals(other.complaint, complaint) &&
            const DeepCollectionEquality()
                .equals(other.parentsResponse, parentsResponse) &&
            const DeepCollectionEquality()
                .equals(other.complainDate, complainDate) &&
            const DeepCollectionEquality()
                .equals(other.complaintsStatus, complaintsStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(studentId),
      const DeepCollectionEquality().hash(session),
      const DeepCollectionEquality().hash(studentName),
      const DeepCollectionEquality().hash(tStudentComplainClass),
      const DeepCollectionEquality().hash(complaintBy),
      const DeepCollectionEquality().hash(complaint),
      const DeepCollectionEquality().hash(parentsResponse),
      const DeepCollectionEquality().hash(complainDate),
      const DeepCollectionEquality().hash(complaintsStatus));

  @JsonKey(ignore: true)
  @override
  _$TStudentComplainCopyWith<_TStudentComplain> get copyWith =>
      __$TStudentComplainCopyWithImpl<_TStudentComplain>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TStudentComplainToJson(this);
  }
}

abstract class _TStudentComplain implements TStudentComplain {
  const factory _TStudentComplain(
          {@JsonKey(name: "student_id") required int studentId,
          String? session,
          @JsonKey(name: "student_name") String? studentName,
          @JsonKey(name: "class") String? tStudentComplainClass,
          @JsonKey(name: "complaint_by") String? complaintBy,
          String? complaint,
          @JsonKey(name: "parents_response") String? parentsResponse,
          @JsonKey(name: "date") String? complainDate,
          @JsonKey(name: "complaints_status") String? complaintsStatus}) =
      _$_TStudentComplain;

  factory _TStudentComplain.fromJson(Map<String, dynamic> json) =
      _$_TStudentComplain.fromJson;

  @override
  @JsonKey(name: "student_id")
  int get studentId;
  @override
  String? get session;
  @override
  @JsonKey(name: "student_name")
  String? get studentName;
  @override
  @JsonKey(name: "class")
  String? get tStudentComplainClass;
  @override
  @JsonKey(name: "complaint_by")
  String? get complaintBy;
  @override
  String? get complaint;
  @override
  @JsonKey(name: "parents_response")
  String? get parentsResponse;
  @override
  @JsonKey(name: "date")
  String? get complainDate;
  @override
  @JsonKey(name: "complaints_status")
  String? get complaintsStatus;
  @override
  @JsonKey(ignore: true)
  _$TStudentComplainCopyWith<_TStudentComplain> get copyWith =>
      throw _privateConstructorUsedError;
}
