import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/shared/provider.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/application/add_complain_notifier.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/application/add_homework_notifier.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/application/add_studymaterial_notifier.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/application/choose_attendence_notifier.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/application/class_subject_notifier.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/application/mark_attendence_notifie.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/application/student_attendance_state.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/application/view_homework_notifier.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/application/view_studymaterial_notifier.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/acedemic_session.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/add_complaint_state.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/add_homework_state.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/add_studymaterial_state.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/attendence_student.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/class_details.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/class_subject_state.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/mark_attendence_state.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/student_attendance_state.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/t_student.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/teacher_attendance.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/teacher_complain.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/teacher_service.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/tstudent_complain.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/view_homework_state.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/view_studymaterial_state.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/infra/teacher_service_impl.dart';

final teacherServiceProvider = Provider.autoDispose<TeacherService>((ref) {
  final header = ref.watch(localStorageProvider).getCustomHeader();
  return TeacherImplementation(header: header);
});

//attendance

final tAttendanceProvider =
    FutureProvider.autoDispose<List<TeacherAttendance>>((ref) async {
  final service = ref.watch(teacherServiceProvider);
  return service.getAttendance();
});

// complain
final tComplainProvider =
    FutureProvider.autoDispose<List<TeacherComplain>>((ref) async {
  final service = ref.watch(teacherServiceProvider);
  return service.teacherComplain();
});

// get classess

final classDetailsProvider =
    FutureProvider.autoDispose<List<ClassDetails>>((ref) async {
  final service = ref.watch(teacherServiceProvider);
  return service.getClasses();
});

//get acedemic session

final acedmicProvider =
    FutureProvider.autoDispose<List<AcedemicSession>>((ref) async {
  final service = ref.watch(teacherServiceProvider);
  return service.getAcedemicSession();
});

// tstuden provider

/* final tStudentProvider =
    StateNotifierProvider<TStudentNotifier, TStudentState>((ref) {
  final service = ref.watch(teacherServiceProvider);
  return TStudentNotifier(service);
}); */

final tStudentProvider = FutureProvider.autoDispose
    .family<List<TStudent>, dynamic>((ref, data) async {
  final service = ref.watch(teacherServiceProvider);
  print(data);
  return service.getStudent(data, "2022-2023");
});
// add complain

final addComplainProvider =
    StateNotifierProvider.autoDispose<AddComplainNotifier, AddComplainState>(
        (ref) {
  final service = ref.watch(teacherServiceProvider);
  return AddComplainNotifier(service);
});

//view complaints

final viewComplainProvider = FutureProvider.family
    .autoDispose<List<TStudentComplain>, String>((ref, id) async {
  final service = ref.watch(teacherServiceProvider);
  return service.getStudentComment("2022-2023", id);
});
/* final viewComplainProvider =
    StateNotifierProvider<StudentComplaintsNotifier, StudentComplaintsState>(
        (ref) {
  final service = ref.watch(teacherServiceProvider);
  return StudentComplaintsNotifier(service);
}); */

final subjectProvider =
    StateNotifierProvider.autoDispose<ClassSubjectNotifier, ClassSubjectState>(
        (ref) {
  final service = ref.watch(teacherServiceProvider);
  return ClassSubjectNotifier(service);
});

//add homework

final addHomeProvider =
    StateNotifierProvider.autoDispose<AddHomeworkNotifier, AddHomeWorkState>(
        (ref) {
  final service = ref.watch(teacherServiceProvider);
  return AddHomeworkNotifier(service);
});

//add study material

final studyMaterialProvider = StateNotifierProvider.autoDispose<
    AddStudyMaterialNotifier, AddStudyMaterialState>((ref) {
  final service = ref.watch(teacherServiceProvider);
  return AddStudyMaterialNotifier(service);
});

//view homework and studymaterial

final viewHomeworkProvider =
    StateNotifierProvider.autoDispose<ViewHomeworkNotifier, ViewHomeworkState>(
        (ref) {
  final service = ref.watch(teacherServiceProvider);
  return ViewHomeworkNotifier(service);
});

final viewStudymaterialProvider = StateNotifierProvider.autoDispose<
    ViewStudyMaterialNotifier, ViewStudyMaterialState>((ref) {
  final service = ref.watch(teacherServiceProvider);
  return ViewStudyMaterialNotifier(service);
});

//view attendance and mark attendance

final getStudentAttendanceProvider = StateNotifierProvider.autoDispose<
    StudentAttendenceNotifier, StudentAttendenceState>((ref) {
  final service = ref.watch(teacherServiceProvider);
  return StudentAttendenceNotifier(service);
});

final tempAttendenceProvider =
    StateNotifierProvider<ChooseAttendenceNotifier, List<AttendanceStudent>>(
        (ref) {
  return ChooseAttendenceNotifier();
});

final markAttendenceProvider = StateNotifierProvider.autoDispose<
    MarkAttendanceNotifier, MarkAttendenceState>((ref) {
  final service = ref.watch(teacherServiceProvider);
  return MarkAttendanceNotifier(service);
});
