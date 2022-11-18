import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:schoo_app/core/domain/app_failure.dart';
import 'package:schoo_app/module/student_module/homework/domain/homework.dart';
import 'package:schoo_app/module/student_module/study_material/domain/study_material.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/acedemic_session.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/attendence_student.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/class_details.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/subject.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/t_student.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/teacher_attendance.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/teacher_complain.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/tstudent_complain.dart';

abstract class TeacherService {
  Future<List<TeacherAttendance>> getAttendance();
  Future<List<TeacherComplain>> teacherComplain();

  Future<List<AcedemicSession>> getAcedemicSession();
  Future<List<TStudent>> getStudent(String classId, String session);
  Future<List<ClassDetails>> getClasses();

  Future<Either<AppFailure, List<Subject>>> getSubject(String classId);

  Future<Either<AppFailure, Unit>> addStudentComplaints(
      String classId,
      String session,
      String studentId,
      String complainDate,
      String complaitBy,
      String complaint);

  Future<List<TStudentComplain>> getStudentComment(
      String session, String classId);

  Future<Either<AppFailure, Unit>> addHmework(String session, String classId,
      String subjectId, File? pdfFile, String videoLink, String date);
  Future<Either<AppFailure, Unit>> addStudymaterial(String session,
      String classId, String subjectId, File? pdfFile, String date);

  Future<Either<AppFailure, List<StudyMaterial>>> viewStudyMaterial(
      String session, String classId, String date);
  Future<Either<AppFailure, List<Homework>>> viewHomework(
      String session, String classId, String date);

  Future<Either<AppFailure, Unit>> attendanceMark(
      List<int> studentId, String session, String classId, String date);

  Future<Either<AppFailure, List<AttendanceStudent>>> getAttendenceOfStudent(
      String date, String classId, String session);
}
