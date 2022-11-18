import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:schoo_app/core/domain/app_failure.dart';
import 'package:schoo_app/core/presentation/url/app_url.dart';
import 'package:schoo_app/core/utils/base_remote_source.dart';
import 'package:schoo_app/core/utils/error_handler.dart';
import 'package:schoo_app/module/student_module/study_material/domain/study_material.dart';
import 'package:schoo_app/module/student_module/homework/domain/homework.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/attendence_student.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/subject.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/t_student.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/class_details.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/acedemic_session.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/teacher_complain.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/teacher_attendance.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/teacher_service.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/tstudent_complain.dart';

class TeacherImplementation extends BaseRemoteSource implements TeacherService {
  TeacherImplementation({required this.header});
  final Future<Map<String, String>> header;

  @override
  Future<List<TeacherAttendance>> getAttendance() async {
    final dioCall = dio.get(AppUrl.baseUrl + AppUrl.teacherDashboard,
        options: Options(headers: await header));

    try {
      final response = await callApiWithErrorParser(dioCall);
      final status = response.data['status'];
      final msg = response.data['message'];
      // print(response);
      if (status == "success") {
        var data = response.data['attendance'] as List;
        if (data.isEmpty) {
          throw UnimplementedError("Attendance Not found");
        } else {
          var list = data.map((e) => TeacherAttendance.fromJson(e)).toList();
          return list;
        }
      } else {
        throw UnimplementedError(msg);
      }
    } on DioError catch (e) {
      throw UnimplementedError(handleDioError(e).message);
    } catch (e) {
      throw UnimplementedError();
    }
  }

  @override
  Future<List<TeacherComplain>> teacherComplain() async {
    final dioCall = dio.get(AppUrl.baseUrl + AppUrl.teacherDashboard,
        options: Options(headers: await header));

    try {
      final response = await callApiWithErrorParser(dioCall);
      final status = response.data['status'];
      final msg = response.data['message'];
      print(response);
      if (status == "success") {
        var data = response.data['complaints'] as List;
        if (data.isEmpty) {
          return [];
        } else {
          var list = data.map((e) => TeacherComplain.fromJson(e)).toList();
          return list;
        }
      } else {
        throw UnimplementedError(msg);
      }
    } on DioError catch (e) {
      print(e.toString());
      throw UnimplementedError(handleDioError(e).message);
    } catch (e) {
      print(e.toString());
      throw UnimplementedError();
    }
  }

  @override
  Future<List<AcedemicSession>> getAcedemicSession() async {
    final dioCall = dio.get(AppUrl.baseUrl + AppUrl.acedmicSession,
        options: Options(headers: await header));

    try {
      final response = await callApiWithErrorParser(dioCall);
      final status = response.data['status'];
      final msg = response.data['message'];
      // print(response);
      if (status == "success") {
        var data = response.data['session'] as List;
        var list = data.map((e) => AcedemicSession.fromJson(e)).toList();
        return list;
      } else {
        throw UnimplementedError(msg);
      }
    } on DioError catch (e) {
      throw UnimplementedError(handleDioError(e).message);
    } catch (e) {
      throw UnimplementedError();
    }
  }

  @override
  Future<List<ClassDetails>> getClasses() async {
    final dioCall = dio.get(AppUrl.baseUrl + AppUrl.classessList,
        options: Options(headers: await header));

    try {
      final response = await callApiWithErrorParser(dioCall);
      final status = response.data['status'];
      final msg = response.data['message'];
      // print(response);
      if (status == "success") {
        var data = response.data['Class'] as List;
        var list = data.map((e) => ClassDetails.fromJson(e)).toList();
        return list;
      } else {
        throw UnimplementedError(msg);
      }
    } on DioError catch (e) {
      throw UnimplementedError(handleDioError(e).message);
    } catch (e) {
      throw UnimplementedError();
    }
  }

  @override
  Future<List<TStudent>> getStudent(String classId, String session) async {
    final dioCall = dio.post(AppUrl.baseUrl + AppUrl.classwiseStudent,
        data: {"class_id": classId, "session": session},
        options: Options(headers: await header));
    print(await dioCall);
    try {
      final response = await callApiWithErrorParser(dioCall);
      final status = response.data['status'];
      final msg = response.data['message'];
      print(response);
      if (status == "success") {
        var data = response.data['Student List'] as List;
        print(data);
        var list = data.map((e) => TStudent.fromJson(e)).toList();
        return list;
      } else {
        throw UnimplementedError(msg);
      }
    } on DioError catch (e) {
      throw UnimplementedError(e.message);
    } catch (e) {
      print(e.toString());
      throw UnimplementedError(e.toString());
    }
  }

  @override
  Future<Either<AppFailure, Unit>> addStudentComplaints(
      String classId,
      String session,
      String studentId,
      String complainDate,
      String complaitBy,
      String complaint) async {
    final dioCall = dio.post(AppUrl.baseUrl + AppUrl.studentComplaints,
        data: {
          "class_id": classId,
          "session": session,
          "student_id": studentId,
          "complaint_date": complainDate,
          "complaint_by": complaitBy,
          "complaint": complaint,
        },
        options: Options(headers: await header));

    try {
      final response = await callApiWithErrorParser(dioCall);
      final status = response.data['status'];
      final msg = response.data['message'];
      // print(response);
      if (status == "success") {
        return right(unit);
      } else {
        return left(AppFailure.serverError(msg));
      }
    } on DioError catch (e) {
      print(e.message);
      return left(AppFailure.serverError(handleDioError(e).message));
    } catch (e) {
      print(e.toString());
      return left(AppFailure.serverError(e.toString()));
    }
  }

  @override
  Future<List<TStudentComplain>> getStudentComment(
      String session, String classId) async {
    print(classId);
    final dioCall = dio.post(AppUrl.baseUrl + AppUrl.viewComplaints,
        data: {"class_id": classId, "session": session},
        options: Options(headers: await header));

    try {
      final response = await callApiWithErrorParser(dioCall);
      final status = response.data['status'];
      final msg = response.data['message'];
      // print(response);
      if (status == "success") {
        var data = response.data['complaints'] as List;
        var list = data.map((e) => TStudentComplain.fromJson(e)).toList();
        return list;
      } else {
        throw UnimplementedError(msg);
      }
    } on DioError catch (e) {
      throw UnimplementedError(e.message);
    } catch (e) {
      throw UnimplementedError(e.toString());
    }
  }

  @override
  Future<Either<AppFailure, Unit>> addHmework(String session, String classId,
      String subjectId, File? file, String videoLink, String date) async {
    final fileName = file?.path.split('/').last ?? "";
    final data = FormData.fromMap({
      "session": session,
      "class_id": classId,
      "subject_id": subjectId,
      "video_link": videoLink,
      "date": date,
      "upload_pdf": file != null
          ? await MultipartFile.fromFile(
              file.path,
              filename: fileName,
            )
          : null
    });
    final dioCall = dio.post(AppUrl.baseUrl + AppUrl.addHomework,
        data: data, options: Options(headers: await header));

    try {
      final response = await callApiWithErrorParser(dioCall);
      print(response.data);
      return right(unit);
    } on DioError catch (e) {
      return left(AppFailure.serverError(handleDioError(e).message));
    } catch (e) {
      return left(AppFailure.serverError(e.toString()));
    }
  }

  @override
  Future<Either<AppFailure, Unit>> addStudymaterial(String session,
      String classId, String subjectId, File? file, String date) async {
    final fileName = file!.path.split('/').last;
    final data = FormData.fromMap({
      "session": session,
      "class_id": classId,
      "subject_id": subjectId,
      "date": date,
      "study_material": await MultipartFile.fromFile(
        file.path,
        filename: fileName,
      )
    });
    final dioCall = dio.post(AppUrl.baseUrl + AppUrl.addStudyMaterial,
        data: data, options: Options(headers: await header));

    try {
      final response = await callApiWithErrorParser(dioCall);
      print(response.data);
      return right(unit);
    } on DioError catch (e) {
      return left(AppFailure.serverError(handleDioError(e).message));
    } catch (e) {
      return left(AppFailure.serverError(e.toString()));
    }
  }

  @override
  Future<Either<AppFailure, List<Subject>>> getSubject(String classId) async {
    final dioCall = dio.post(AppUrl.baseUrl + AppUrl.subjectList,
        data: {
          "class_id": classId,
        },
        options: Options(headers: await header));

    try {
      final response = await callApiWithErrorParser(dioCall);
      final status = response.data['status'];
      final msg = response.data['message'];

      if (status == "success") {
        var data = response.data['subjects'] as List;
        var list = data.map((e) => Subject.fromJson(e)).toList();
        return right(list);
      } else {
        return left(AppFailure.serverError(msg));
      }
    } on DioError catch (e) {
      return left(AppFailure.serverError(handleDioError(e).message));
    } catch (e) {
      return left(AppFailure.serverError(e.toString()));
    }
  }

  @override
  Future<Either<AppFailure, List<Homework>>> viewHomework(
      String session, String classId, String date) async {
    final dioCall = dio.post(AppUrl.baseUrl + AppUrl.viewHomework,
        data: {"class_id": classId, "session": session, "date": date},
        options: Options(headers: await header));
    //  print(session + "///" + classId + '////' + date);
    try {
      final response = await callApiWithErrorParser(dioCall);
      final status = response.data['status'];
      final msg = response.data['message'];
      // print(response);
      if (status == "success") {
        var data = response.data['homework'] as List;
        //  print(data);
        var list = data.map((e) => Homework.fromJson(e)).toList();
        return right(list);
      } else {
        return left(AppFailure.serverError(msg));
      }
    } on DioError catch (e) {
      return left(AppFailure.serverError(handleDioError(e).message));
    } catch (e) {
      return left(AppFailure.serverError(e.toString()));
    }
  }

  @override
  Future<Either<AppFailure, List<StudyMaterial>>> viewStudyMaterial(
      String session, String classId, String date) async {
    // print(session + "///" + classId + '////' + date);
    final dioCall = dio.post(AppUrl.baseUrl + AppUrl.viewStudymaterial,
        data: {"class_id": classId, "session": session, "date": date},
        options: Options(headers: await header));

    try {
      final response = await callApiWithErrorParser(dioCall);
      final status = response.data['status'];
      final msg = response.data['message'];
      // print(response);
      if (status == "success") {
        //  print(response.data);
        var data = response.data['studymaterial'] as List;
        var list = data.map((e) => StudyMaterial.fromJson(e)).toList();
        return right(list);
      } else {
        return left(AppFailure.serverError(msg));
      }
    } on DioError catch (e) {
      return left(AppFailure.serverError(handleDioError(e).message));
    } catch (e) {
      return left(AppFailure.serverError(e.toString()));
    }
  }

  @override
  Future<Either<AppFailure, Unit>> attendanceMark(
      List<int> studentId, String session, String classId, String date) async {
    final dioCall = dio.post(AppUrl.baseUrl + AppUrl.markAttendance,
        data: {
          "student_id": studentId,
          "class_id": classId,
          "session": session,
          "date": date
        },
        options: Options(headers: await header));

    try {
      final response = await callApiWithErrorParser(dioCall);
      final status = response.data['status'];
      final msg = response.data['message'];
      // print(response);
      if (status == "success") {
        return right(unit);
      } else {
        return left(AppFailure.serverError(msg));
      }
    } on DioError catch (e) {
      return left(AppFailure.serverError(handleDioError(e).message));
    } catch (e) {
      return left(AppFailure.serverError(e.toString()));
    }
  }

  @override
  Future<Either<AppFailure, List<AttendanceStudent>>> getAttendenceOfStudent(
      String date, String classId, String session) async {
    final dioCall = dio.post(AppUrl.baseUrl + AppUrl.getStudentAttendance,
        data: {"class_id": classId, "session": session, "datetoday": date},
        options: Options(headers: await header));

    try {
      final response = await callApiWithErrorParser(dioCall);
      final status = response.data['status'];
      final msg = response.data['message'];
      print(response);
      if (status == "success") {
        var data = response.data['students'] as List;

        var studentList = data[0]['student_atttendance_list'] as List;
        print(studentList);
        var list =
            studentList.map((e) => AttendanceStudent.fromJson(e)).toList();
        print(list);
        return right(list);
      } else {
        return left(const AppFailure.serverError("No Data Found"));
      }
    } on DioError catch (e) {
      return left(AppFailure.serverError(handleDioError(e).message));
    } catch (e) {
      print(e.toString());
      return left(AppFailure.serverError(e.toString()));
    }
  }
}
