// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tstudent_complain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TStudentComplain _$$_TStudentComplainFromJson(Map<String, dynamic> json) =>
    _$_TStudentComplain(
      studentId: json['student_id'] as int,
      session: json['session'] as String?,
      studentName: json['student_name'] as String?,
      tStudentComplainClass: json['class'] as String?,
      complaintBy: json['complaint_by'] as String?,
      complaint: json['complaint'] as String?,
      parentsResponse: json['parents_response'] as String?,
      complainDate: json['date'] as String?,
      complaintsStatus: json['complaints_status'] as String?,
    );

Map<String, dynamic> _$$_TStudentComplainToJson(_$_TStudentComplain instance) =>
    <String, dynamic>{
      'student_id': instance.studentId,
      'session': instance.session,
      'student_name': instance.studentName,
      'class': instance.tStudentComplainClass,
      'complaint_by': instance.complaintBy,
      'complaint': instance.complaint,
      'parents_response': instance.parentsResponse,
      'date': instance.complainDate,
      'complaints_status': instance.complaintsStatus,
    };
