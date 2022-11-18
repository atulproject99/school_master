import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/attendence_student.dart';

class ChooseAttendenceNotifier extends StateNotifier<List<AttendanceStudent>> {
  ChooseAttendenceNotifier() : super([]);
  Future<void> addItem(AttendanceStudent item) async {
    state = [...state..add(item)];
  }

  Future<void> remove(AttendanceStudent item) async {
    state = [...state..remove(item)];
    print(state.length);
  }

  Future<void> addAllItem(List<AttendanceStudent> list) async {
  
    state = [...state..addAll(list)];
  }

  Future<void> removeAll() async {
    state = [];
  }
}
