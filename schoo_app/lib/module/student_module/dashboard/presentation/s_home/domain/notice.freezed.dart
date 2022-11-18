// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Notice _$NoticeFromJson(Map<String, dynamic> json) {
  return _Notice.fromJson(json);
}

/// @nodoc
class _$NoticeTearOff {
  const _$NoticeTearOff();

  _Notice call(
      {required int id,
      @JsonKey(name: "school_id") int? schoolId,
      @JsonKey(name: "branch_id") int? branchId,
      @JsonKey(name: "student_id") int? studentId,
      @JsonKey(name: "class_id") int? classId,
      String? session,
      @JsonKey(name: "notice_date") DateTime? noticeDate,
      @JsonKey(name: "notice_heading") String? noticeHeading,
      @JsonKey(name: "notice_details") String? noticeDetails,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt}) {
    return _Notice(
      id: id,
      schoolId: schoolId,
      branchId: branchId,
      studentId: studentId,
      classId: classId,
      session: session,
      noticeDate: noticeDate,
      noticeHeading: noticeHeading,
      noticeDetails: noticeDetails,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  Notice fromJson(Map<String, Object?> json) {
    return Notice.fromJson(json);
  }
}

/// @nodoc
const $Notice = _$NoticeTearOff();

/// @nodoc
mixin _$Notice {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "school_id")
  int? get schoolId => throw _privateConstructorUsedError;
  @JsonKey(name: "branch_id")
  int? get branchId => throw _privateConstructorUsedError;
  @JsonKey(name: "student_id")
  int? get studentId => throw _privateConstructorUsedError;
  @JsonKey(name: "class_id")
  int? get classId => throw _privateConstructorUsedError;
  String? get session => throw _privateConstructorUsedError;
  @JsonKey(name: "notice_date")
  DateTime? get noticeDate => throw _privateConstructorUsedError;
  @JsonKey(name: "notice_heading")
  String? get noticeHeading => throw _privateConstructorUsedError;
  @JsonKey(name: "notice_details")
  String? get noticeDetails => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoticeCopyWith<Notice> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeCopyWith<$Res> {
  factory $NoticeCopyWith(Notice value, $Res Function(Notice) then) =
      _$NoticeCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: "school_id") int? schoolId,
      @JsonKey(name: "branch_id") int? branchId,
      @JsonKey(name: "student_id") int? studentId,
      @JsonKey(name: "class_id") int? classId,
      String? session,
      @JsonKey(name: "notice_date") DateTime? noticeDate,
      @JsonKey(name: "notice_heading") String? noticeHeading,
      @JsonKey(name: "notice_details") String? noticeDetails,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt});
}

/// @nodoc
class _$NoticeCopyWithImpl<$Res> implements $NoticeCopyWith<$Res> {
  _$NoticeCopyWithImpl(this._value, this._then);

  final Notice _value;
  // ignore: unused_field
  final $Res Function(Notice) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? schoolId = freezed,
    Object? branchId = freezed,
    Object? studentId = freezed,
    Object? classId = freezed,
    Object? session = freezed,
    Object? noticeDate = freezed,
    Object? noticeHeading = freezed,
    Object? noticeDetails = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      schoolId: schoolId == freezed
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int?,
      branchId: branchId == freezed
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as int?,
      studentId: studentId == freezed
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int?,
      classId: classId == freezed
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as int?,
      session: session == freezed
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as String?,
      noticeDate: noticeDate == freezed
          ? _value.noticeDate
          : noticeDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      noticeHeading: noticeHeading == freezed
          ? _value.noticeHeading
          : noticeHeading // ignore: cast_nullable_to_non_nullable
              as String?,
      noticeDetails: noticeDetails == freezed
          ? _value.noticeDetails
          : noticeDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$NoticeCopyWith<$Res> implements $NoticeCopyWith<$Res> {
  factory _$NoticeCopyWith(_Notice value, $Res Function(_Notice) then) =
      __$NoticeCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: "school_id") int? schoolId,
      @JsonKey(name: "branch_id") int? branchId,
      @JsonKey(name: "student_id") int? studentId,
      @JsonKey(name: "class_id") int? classId,
      String? session,
      @JsonKey(name: "notice_date") DateTime? noticeDate,
      @JsonKey(name: "notice_heading") String? noticeHeading,
      @JsonKey(name: "notice_details") String? noticeDetails,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt});
}

/// @nodoc
class __$NoticeCopyWithImpl<$Res> extends _$NoticeCopyWithImpl<$Res>
    implements _$NoticeCopyWith<$Res> {
  __$NoticeCopyWithImpl(_Notice _value, $Res Function(_Notice) _then)
      : super(_value, (v) => _then(v as _Notice));

  @override
  _Notice get _value => super._value as _Notice;

  @override
  $Res call({
    Object? id = freezed,
    Object? schoolId = freezed,
    Object? branchId = freezed,
    Object? studentId = freezed,
    Object? classId = freezed,
    Object? session = freezed,
    Object? noticeDate = freezed,
    Object? noticeHeading = freezed,
    Object? noticeDetails = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_Notice(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      schoolId: schoolId == freezed
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int?,
      branchId: branchId == freezed
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as int?,
      studentId: studentId == freezed
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int?,
      classId: classId == freezed
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as int?,
      session: session == freezed
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as String?,
      noticeDate: noticeDate == freezed
          ? _value.noticeDate
          : noticeDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      noticeHeading: noticeHeading == freezed
          ? _value.noticeHeading
          : noticeHeading // ignore: cast_nullable_to_non_nullable
              as String?,
      noticeDetails: noticeDetails == freezed
          ? _value.noticeDetails
          : noticeDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Notice implements _Notice {
  const _$_Notice(
      {required this.id,
      @JsonKey(name: "school_id") this.schoolId,
      @JsonKey(name: "branch_id") this.branchId,
      @JsonKey(name: "student_id") this.studentId,
      @JsonKey(name: "class_id") this.classId,
      this.session,
      @JsonKey(name: "notice_date") this.noticeDate,
      @JsonKey(name: "notice_heading") this.noticeHeading,
      @JsonKey(name: "notice_details") this.noticeDetails,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt});

  factory _$_Notice.fromJson(Map<String, dynamic> json) =>
      _$$_NoticeFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "school_id")
  final int? schoolId;
  @override
  @JsonKey(name: "branch_id")
  final int? branchId;
  @override
  @JsonKey(name: "student_id")
  final int? studentId;
  @override
  @JsonKey(name: "class_id")
  final int? classId;
  @override
  final String? session;
  @override
  @JsonKey(name: "notice_date")
  final DateTime? noticeDate;
  @override
  @JsonKey(name: "notice_heading")
  final String? noticeHeading;
  @override
  @JsonKey(name: "notice_details")
  final String? noticeDetails;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Notice(id: $id, schoolId: $schoolId, branchId: $branchId, studentId: $studentId, classId: $classId, session: $session, noticeDate: $noticeDate, noticeHeading: $noticeHeading, noticeDetails: $noticeDetails, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Notice &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.schoolId, schoolId) &&
            const DeepCollectionEquality().equals(other.branchId, branchId) &&
            const DeepCollectionEquality().equals(other.studentId, studentId) &&
            const DeepCollectionEquality().equals(other.classId, classId) &&
            const DeepCollectionEquality().equals(other.session, session) &&
            const DeepCollectionEquality()
                .equals(other.noticeDate, noticeDate) &&
            const DeepCollectionEquality()
                .equals(other.noticeHeading, noticeHeading) &&
            const DeepCollectionEquality()
                .equals(other.noticeDetails, noticeDetails) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(schoolId),
      const DeepCollectionEquality().hash(branchId),
      const DeepCollectionEquality().hash(studentId),
      const DeepCollectionEquality().hash(classId),
      const DeepCollectionEquality().hash(session),
      const DeepCollectionEquality().hash(noticeDate),
      const DeepCollectionEquality().hash(noticeHeading),
      const DeepCollectionEquality().hash(noticeDetails),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$NoticeCopyWith<_Notice> get copyWith =>
      __$NoticeCopyWithImpl<_Notice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoticeToJson(this);
  }
}

abstract class _Notice implements Notice {
  const factory _Notice(
      {required int id,
      @JsonKey(name: "school_id") int? schoolId,
      @JsonKey(name: "branch_id") int? branchId,
      @JsonKey(name: "student_id") int? studentId,
      @JsonKey(name: "class_id") int? classId,
      String? session,
      @JsonKey(name: "notice_date") DateTime? noticeDate,
      @JsonKey(name: "notice_heading") String? noticeHeading,
      @JsonKey(name: "notice_details") String? noticeDetails,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt}) = _$_Notice;

  factory _Notice.fromJson(Map<String, dynamic> json) = _$_Notice.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "school_id")
  int? get schoolId;
  @override
  @JsonKey(name: "branch_id")
  int? get branchId;
  @override
  @JsonKey(name: "student_id")
  int? get studentId;
  @override
  @JsonKey(name: "class_id")
  int? get classId;
  @override
  String? get session;
  @override
  @JsonKey(name: "notice_date")
  DateTime? get noticeDate;
  @override
  @JsonKey(name: "notice_heading")
  String? get noticeHeading;
  @override
  @JsonKey(name: "notice_details")
  String? get noticeDetails;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$NoticeCopyWith<_Notice> get copyWith => throw _privateConstructorUsedError;
}
