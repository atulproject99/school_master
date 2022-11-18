import 'package:dio/dio.dart';
import 'package:schoo_app/core/presentation/url/app_url.dart';
import 'package:schoo_app/core/utils/base_remote_source.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_home/domain/banner.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_home/domain/events.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_home/domain/notice_data.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_home/domain/phome_service.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_home/domain/pstudent.dart';
import 'package:schoo_app/module/student_module/homework/domain/homework.dart';

class PHomeServiceImpl extends BaseRemoteSource implements PHomeService {
  PHomeServiceImpl({required this.header});
  final Future<Map<String, String>> header;

  @override
  Future<List<PStudent>> getStudent() async {
    //   print(await header);
    final dioCall = dio.get(AppUrl.baseUrl + AppUrl.allChilds,
        options: Options(headers: await header));
    try {
      final response = await callApiWithErrorParser(dioCall);
      final status = response.data['status'];
      final msg = response.data['message'];
      if (status == "success") {
        final data = response.data['data'] as List;
        //   print(data);

        return data.map((e) => PStudent.fromJson(e)).toList();
      } else {
        return [];
      }
    } catch (e) {
      // print(e.toString());
      throw UnimplementedError();
    }
  }

  @override
  Future<List<Banner>> getBanner() async {
    final dioCall = dio.get(AppUrl.baseUrl + AppUrl.banner,
        options: Options(headers: await header));
    try {
      final response = await callApiWithErrorParser(dioCall);
      final status = response.data['status'];
      final msg = response.data['message'];
      if (status == "success") {
        final data = response.data['data'] as List;
        //print(data);

        return data.map((e) => Banner.fromJson(e)).toList();
      } else {
        return [];
      }
    } catch (e) {
      // print(e.toString());
      throw UnimplementedError();
    }
  }

  @override
  Future<List<Events>> getEvents() async {
    final dioCall = dio.get(AppUrl.baseUrl + AppUrl.showEvents,
        options: Options(headers: await header));
    try {
      final response = await callApiWithErrorParser(dioCall);
      final status = response.data['status'];
      final msg = response.data['message'];
      if (status == "success") {
        final data = response.data['event'] as List;
        print(data);

        return data.map((e) => Events.fromJson(e)).toList();
      } else {
        return [];
      }
    } catch (e) {
      print(e.toString());
      throw UnimplementedError();
    }
  }

  @override
  Future<List<NoticeData>> getNotice(int studentId) async {
    final dioCall = dio.post(AppUrl.baseUrl + AppUrl.viewNotice,
        data: {"student_id": studentId},
        options: Options(headers: await header));
    try {
      final response = await callApiWithErrorParser(dioCall);
      final status = response.data['status'];
      final msg = response.data['message'];
      if (status == "success") {
        final data = response.data['data'] as List;
        print(data);

        return data.map((e) => NoticeData.fromJson(e)).toList();
      } else {
        return [];
      }
    } catch (e) {
      print(e.toString());
      throw UnimplementedError();
    }
  }

  @override
  Future<List<Homework>> getHomeWork(int studentId) async {
    final dioCall = dio.post(AppUrl.baseUrl + AppUrl.viewHomeWorkList,
        data: {
          "student_id": studentId,
        },
        options: Options(headers: await header));
    try {
      final response = await callApiWithErrorParser(dioCall);
      final status = response.data['status'];
      final msg = response.data['message'];
      if (status == "success") {
        final data = response.data['data'] as List;
        print(data);

        return data.map((e) => Homework.fromJson(e)).toList();
      } else {
        return [];
      }
    } catch (e) {
      print(e.toString());
      throw UnimplementedError();
    }
  }

  @override
  Future<String> getHomeWorkResponse(int studentId, int homeworkId) async {
    final dioCall = dio.post(AppUrl.baseUrl + AppUrl.viewHomeworkResponse,
        data: {"student_id": studentId, "homework_id": homeworkId},
        options: Options(headers: await header));
    try {
      final response = await callApiWithErrorParser(dioCall);
      final status = response.data['status'];
      final msg = response.data['message'];
      if (status == "success") {
        final data = response.data['data'] as List;

        return data[0]['responsestatus'];
      } else {
        return "";
      }
    } catch (e) {
      print(e.toString());
      throw UnimplementedError();
    }
  }
}
