import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_home/domain/banner.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_home/domain/events.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_home/domain/notice_data.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_home/domain/pstudent.dart';
import 'package:schoo_app/module/student_module/homework/domain/homework.dart';

abstract class PHomeService {
  Future<List<PStudent>> getStudent();
  Future<List<Banner>> getBanner();
  Future<List<Events>> getEvents();
  Future<List<NoticeData>> getNotice(int studentId);
  Future<List<Homework>> getHomeWork(int studentId);
  Future<String> getHomeWorkResponse(int studentId, int homeworkId);
}
