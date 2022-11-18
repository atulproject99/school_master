// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i42;
import 'package:flutter/material.dart' as _i43;

import '../../../authentication/domain/user.dart' as _i44;
import '../../../authentication/presentation/login_page.dart' as _i2;
import '../../../module/parent_module/dashboard/presentation/pages/notification/presentation/notification_page.dart'
    as _i26;
import '../../../module/parent_module/dashboard/presentation/pages/p_home/domain/pstudent.dart'
    as _i45;
import '../../../module/parent_module/dashboard/presentation/pages/p_home/presentation/pages/c_events.dart'
    as _i38;
import '../../../module/parent_module/dashboard/presentation/pages/p_home/presentation/pages/homework_list.dart'
    as _i40;
import '../../../module/parent_module/dashboard/presentation/pages/p_home/presentation/pages/notice_page.dart'
    as _i39;
import '../../../module/parent_module/dashboard/presentation/pages/p_home/presentation/pages/studnent_details.dart'
    as _i32;
import '../../../module/parent_module/dashboard/presentation/pages/p_profile/presentation/pages/html_reader_page.dart'
    as _i23;
import '../../../module/parent_module/dashboard/presentation/pages/p_profile/presentation/pages/p_edit_profile.dart'
    as _i6;
import '../../../module/parent_module/dashboard/presentation/pages/p_profile/presentation/pages/p_password_update.dart'
    as _i5;
import '../../../module/parent_module/dashboard/presentation/parent_dashboard.dart'
    as _i4;
import '../../../module/parent_module/p_complain/presentation/pages/p_complain_page.dart'
    as _i8;
import '../../../module/parent_module/p_fees/presentation/pages/p_fees_page.dart'
    as _i7;
import '../../../module/parent_module/p_fees/presentation/pages/p_transport_fees.dart'
    as _i33;
import '../../../module/parent_module/p_fees/presentation/pages/successfull.dart'
    as _i22;
import '../../../module/student_module/application_form/presentation/application_form_page.dart'
    as _i18;
import '../../../module/student_module/attendance/presentation/s_attendance.dart'
    as _i9;
import '../../../module/student_module/dashboard/presentation/s_fees/presentation/pages/s_fees_page.dart'
    as _i24;
import '../../../module/student_module/dashboard/presentation/s_home/presentation/application_form/presentation/s_application_form_page.dart'
    as _i25;
import '../../../module/student_module/dashboard/presentation/s_home/presentation/complain_list.dart'
    as _i41;
import '../../../module/student_module/dashboard/presentation/s_leave/presentation/pages/add_leave_page.dart'
    as _i36;
import '../../../module/student_module/dashboard/presentation/s_leave/presentation/pages/leave_list_page.dart'
    as _i35;
import '../../../module/student_module/dashboard/student_dashboard.dart' as _i3;
import '../../../module/student_module/fees/presentation/fees_page.dart'
    as _i19;
import '../../../module/student_module/homework/presentation/pages/homework_list.dart'
    as _i10;
import '../../../module/student_module/homework/presentation/pages/pdf_view_page.dart'
    as _i12;
import '../../../module/student_module/homework/presentation/pages/video_player_page.dart'
    as _i11;
import '../../../module/student_module/noticeboard/presentation/s_noticeboard.dart'
    as _i13;
import '../../../module/student_module/study_material/presentation/study_material_page.dart'
    as _i27;
import '../../../module/teacher_module/dashboard/presentation/t_home/presentation/pages/add_complain_page.dart'
    as _i20;
import '../../../module/teacher_module/dashboard/presentation/t_home/presentation/pages/add_homework_page.dart'
    as _i30;
import '../../../module/teacher_module/dashboard/presentation/t_home/presentation/pages/add_study_material_page.dart'
    as _i31;
import '../../../module/teacher_module/dashboard/presentation/t_home/presentation/pages/class_list_page.dart'
    as _i37;
import '../../../module/teacher_module/dashboard/presentation/t_home/presentation/pages/complain_page.dart'
    as _i21;
import '../../../module/teacher_module/dashboard/presentation/t_home/presentation/pages/mark_attendance_page.dart'
    as _i34;
import '../../../module/teacher_module/dashboard/presentation/t_home/presentation/pages/t_attenance.dart'
    as _i16;
import '../../../module/teacher_module/dashboard/presentation/t_home/presentation/pages/t_complains.dart'
    as _i15;
import '../../../module/teacher_module/dashboard/presentation/t_home/presentation/pages/t_homework.dart'
    as _i28;
import '../../../module/teacher_module/dashboard/presentation/t_home/presentation/pages/t_students.dart'
    as _i17;
import '../../../module/teacher_module/dashboard/presentation/t_home/presentation/pages/t_study_material.dart'
    as _i29;
import '../../../module/teacher_module/dashboard/t_dashboard_page.dart' as _i14;
import '../../../splash/presentation/splash_page.dart' as _i1;

class AppRouter extends _i42.RootStackRouter {
  AppRouter([_i43.GlobalKey<_i43.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i42.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i42.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    LoginRoute.name: (routeData) {
      return _i42.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.LoginPage());
    },
    StudentDashboardRoute.name: (routeData) {
      return _i42.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.StudentDashboardPage());
    },
    ParentDashboardRoute.name: (routeData) {
      return _i42.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.ParentDashboardPage());
    },
    ParentPasswordUpdateRoute.name: (routeData) {
      return _i42.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.ParentPasswordUpdatePage());
    },
    ParentProfileUpdateRoute.name: (routeData) {
      final args = routeData.argsAs<ParentProfileUpdateRouteArgs>();
      return _i42.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.ParentProfileUpdatePage(key: args.key, user: args.user));
    },
    PFeesRoute.name: (routeData) {
      final args = routeData.argsAs<PFeesRouteArgs>();
      return _i42.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i7.PFeesPage(
              key: args.key,
              studentId: args.studentId,
              nextDueDate: args.nextDueDate));
    },
    PComplainRoute.name: (routeData) {
      final args = routeData.argsAs<PComplainRouteArgs>();
      return _i42.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i8.PComplainPage(key: args.key, studentId: args.studentId));
    },
    StudentAttendanceRoute.name: (routeData) {
      final args = routeData.argsAs<StudentAttendanceRouteArgs>(
          orElse: () => const StudentAttendanceRouteArgs());
      return _i42.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i9.StudentAttendancePage(key: args.key));
    },
    HomeworkListRoute.name: (routeData) {
      return _i42.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.HomeworkListPage());
    },
    VideoPlayerRoute.name: (routeData) {
      final args = routeData.argsAs<VideoPlayerRouteArgs>();
      return _i42.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i11.VideoPlayerPage(key: args.key, videoUrl: args.videoUrl));
    },
    MyPdfViewerRoute.name: (routeData) {
      final args = routeData.argsAs<MyPdfViewerRouteArgs>();
      return _i42.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i12.MyPdfViewerPage(
              key: args.key, pdfUrl: args.pdfUrl, title: args.title));
    },
    StudentNoticeboardRoute.name: (routeData) {
      final args = routeData.argsAs<StudentNoticeboardRouteArgs>(
          orElse: () => const StudentNoticeboardRouteArgs());
      return _i42.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i13.StudentNoticeboardPage(key: args.key));
    },
    TeacherDashboardRoute.name: (routeData) {
      return _i42.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.TeacherDashboardPage());
    },
    TeacherComplainListRoute.name: (routeData) {
      return _i42.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.TeacherComplainListPage());
    },
    TeacherAttendanceRoute.name: (routeData) {
      return _i42.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i16.TeacherAttendancePage());
    },
    TStudentsRoute.name: (routeData) {
      final args = routeData.argsAs<TStudentsRouteArgs>();
      return _i42.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i17.TStudentsPage(key: args.key, classId: args.classId));
    },
    ApplicationFormRoute.name: (routeData) {
      return _i42.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i18.ApplicationFormPage());
    },
    FeesRoute.name: (routeData) {
      return _i42.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i19.FeesPage());
    },
    AddComplainRoute.name: (routeData) {
      final args = routeData.argsAs<AddComplainRouteArgs>();
      return _i42.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i20.AddComplainPage(
              key: args.key,
              session: args.session,
              classId: args.classId,
              className: args.className,
              studentId: args.studentId,
              studentName: args.studentName));
    },
    StudentComplainRoute.name: (routeData) {
      final args = routeData.argsAs<StudentComplainRouteArgs>();
      return _i42.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i21.StudentComplainPage(key: args.key, classId: args.classId));
    },
    SuccessfullRoute.name: (routeData) {
      final args = routeData.argsAs<SuccessfullRouteArgs>();
      return _i42.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i22.SuccessfullPage(
              key: args.key, paymentStatus: args.paymentStatus));
    },
    HtmlReaderRoute.name: (routeData) {
      final args = routeData.argsAs<HtmlReaderRouteArgs>();
      return _i42.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i23.HtmlReaderPage(
              key: args.key, title: args.title, data: args.data));
    },
    SFeesRoute.name: (routeData) {
      final args = routeData.argsAs<SFeesRouteArgs>();
      return _i42.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i24.SFeesPage(
              key: args.key,
              studentId: args.studentId,
              nextDueDate: args.nextDueDate));
    },
    StudentApplicationFormRoute.name: (routeData) {
      return _i42.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i25.StudentApplicationFormPage());
    },
    NotificationRoute.name: (routeData) {
      return _i42.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i26.NotificationPage());
    },
    StudyMaterialRoute.name: (routeData) {
      return _i42.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i27.StudyMaterialPage());
    },
    THomeworkRoute.name: (routeData) {
      final args = routeData.argsAs<THomeworkRouteArgs>();
      return _i42.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i28.THomeworkPage(key: args.key, classId: args.classId));
    },
    TStudyMaterialRoute.name: (routeData) {
      final args = routeData.argsAs<TStudyMaterialRouteArgs>();
      return _i42.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i29.TStudyMaterialPage(key: args.key, classId: args.classId));
    },
    AddHomeworkRoute.name: (routeData) {
      return _i42.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i30.AddHomeworkPage());
    },
    AddStudyMaterialRoute.name: (routeData) {
      return _i42.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i31.AddStudyMaterialPage());
    },
    StudentDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<StudentDetailsRouteArgs>();
      return _i42.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i32.StudentDetailsPage(key: args.key, student: args.student));
    },
    PTransportAmountRoute.name: (routeData) {
      final args = routeData.argsAs<PTransportAmountRouteArgs>();
      return _i42.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i33.PTransportAmountPage(
              key: args.key,
              studentId: args.studentId,
              nextDueDate: args.nextDueDate));
    },
    MarkAttendanceRoute.name: (routeData) {
      final args = routeData.argsAs<MarkAttendanceRouteArgs>();
      return _i42.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i34.MarkAttendancePage(key: args.key, classId: args.classId));
    },
    LeaveListRoute.name: (routeData) {
      return _i42.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i35.LeaveListPage());
    },
    AddLeaveRoute.name: (routeData) {
      return _i42.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i36.AddLeavePage());
    },
    ClassListRoute.name: (routeData) {
      final args = routeData.argsAs<ClassListRouteArgs>();
      return _i42.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i37.ClassListPage(key: args.key, type: args.type));
    },
    ShowEventsRoute.name: (routeData) {
      final args = routeData.argsAs<ShowEventsRouteArgs>(
          orElse: () => const ShowEventsRouteArgs());
      return _i42.MaterialPageX<dynamic>(
          routeData: routeData, child: _i38.ShowEventsPage(key: args.key));
    },
    NoticeRoute.name: (routeData) {
      final args = routeData.argsAs<NoticeRouteArgs>();
      return _i42.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i39.NoticePage(key: args.key, studentId: args.studentId));
    },
    PHomeworkListRoute.name: (routeData) {
      final args = routeData.argsAs<PHomeworkListRouteArgs>();
      return _i42.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i40.PHomeworkListPage(key: args.key, studentId: args.studentId));
    },
    SComplainRoute.name: (routeData) {
      return _i42.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i41.SComplainPage());
    }
  };

  @override
  List<_i42.RouteConfig> get routes => [
        _i42.RouteConfig(SplashRoute.name, path: '/'),
        _i42.RouteConfig(LoginRoute.name, path: '/login-page'),
        _i42.RouteConfig(StudentDashboardRoute.name,
            path: '/student-dashboard-page'),
        _i42.RouteConfig(ParentDashboardRoute.name,
            path: '/parent-dashboard-page'),
        _i42.RouteConfig(ParentPasswordUpdateRoute.name,
            path: '/parent-password-update-page'),
        _i42.RouteConfig(ParentProfileUpdateRoute.name,
            path: '/parent-profile-update-page'),
        _i42.RouteConfig(PFeesRoute.name, path: '/p-fees-page'),
        _i42.RouteConfig(PComplainRoute.name, path: '/p-complain-page'),
        _i42.RouteConfig(StudentAttendanceRoute.name,
            path: '/student-attendance-page'),
        _i42.RouteConfig(HomeworkListRoute.name, path: '/homework-list-page'),
        _i42.RouteConfig(VideoPlayerRoute.name, path: '/video-player-page'),
        _i42.RouteConfig(MyPdfViewerRoute.name, path: '/my-pdf-viewer-page'),
        _i42.RouteConfig(StudentNoticeboardRoute.name,
            path: '/student-noticeboard-page'),
        _i42.RouteConfig(TeacherDashboardRoute.name,
            path: '/teacher-dashboard-page'),
        _i42.RouteConfig(TeacherComplainListRoute.name,
            path: '/teacher-complain-list-page'),
        _i42.RouteConfig(TeacherAttendanceRoute.name,
            path: '/teacher-attendance-page'),
        _i42.RouteConfig(TStudentsRoute.name, path: '/t-students-page'),
        _i42.RouteConfig(ApplicationFormRoute.name,
            path: '/application-form-page'),
        _i42.RouteConfig(FeesRoute.name, path: '/fees-page'),
        _i42.RouteConfig(AddComplainRoute.name, path: '/add-complain-page'),
        _i42.RouteConfig(StudentComplainRoute.name,
            path: '/student-complain-page'),
        _i42.RouteConfig(SuccessfullRoute.name, path: '/successfull-page'),
        _i42.RouteConfig(HtmlReaderRoute.name, path: '/html-reader-page'),
        _i42.RouteConfig(SFeesRoute.name, path: '/s-fees-page'),
        _i42.RouteConfig(StudentApplicationFormRoute.name,
            path: '/student-application-form-page'),
        _i42.RouteConfig(NotificationRoute.name, path: '/notification-page'),
        _i42.RouteConfig(StudyMaterialRoute.name, path: '/study-material-page'),
        _i42.RouteConfig(THomeworkRoute.name, path: '/t-homework-page'),
        _i42.RouteConfig(TStudyMaterialRoute.name,
            path: '/t-study-material-page'),
        _i42.RouteConfig(AddHomeworkRoute.name, path: '/add-homework-page'),
        _i42.RouteConfig(AddStudyMaterialRoute.name,
            path: '/add-study-material-page'),
        _i42.RouteConfig(FeesRoute.name, path: '/fees-page'),
        _i42.RouteConfig(StudentDetailsRoute.name,
            path: '/student-details-page'),
        _i42.RouteConfig(PTransportAmountRoute.name,
            path: '/p-transport-amount-page'),
        _i42.RouteConfig(MarkAttendanceRoute.name,
            path: '/mark-attendance-page'),
        _i42.RouteConfig(LeaveListRoute.name, path: '/leave-list-page'),
        _i42.RouteConfig(AddLeaveRoute.name, path: '/add-leave-page'),
        _i42.RouteConfig(ClassListRoute.name, path: '/class-list-page'),
        _i42.RouteConfig(ShowEventsRoute.name, path: '/show-events-page'),
        _i42.RouteConfig(NoticeRoute.name, path: '/notice-page'),
        _i42.RouteConfig(PHomeworkListRoute.name,
            path: '/p-homework-list-page'),
        _i42.RouteConfig(SComplainRoute.name, path: '/s-complain-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i42.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i42.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login-page');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.StudentDashboardPage]
class StudentDashboardRoute extends _i42.PageRouteInfo<void> {
  const StudentDashboardRoute()
      : super(StudentDashboardRoute.name, path: '/student-dashboard-page');

  static const String name = 'StudentDashboardRoute';
}

/// generated route for
/// [_i4.ParentDashboardPage]
class ParentDashboardRoute extends _i42.PageRouteInfo<void> {
  const ParentDashboardRoute()
      : super(ParentDashboardRoute.name, path: '/parent-dashboard-page');

  static const String name = 'ParentDashboardRoute';
}

/// generated route for
/// [_i5.ParentPasswordUpdatePage]
class ParentPasswordUpdateRoute extends _i42.PageRouteInfo<void> {
  const ParentPasswordUpdateRoute()
      : super(ParentPasswordUpdateRoute.name,
            path: '/parent-password-update-page');

  static const String name = 'ParentPasswordUpdateRoute';
}

/// generated route for
/// [_i6.ParentProfileUpdatePage]
class ParentProfileUpdateRoute
    extends _i42.PageRouteInfo<ParentProfileUpdateRouteArgs> {
  ParentProfileUpdateRoute({_i43.Key? key, required _i44.User user})
      : super(ParentProfileUpdateRoute.name,
            path: '/parent-profile-update-page',
            args: ParentProfileUpdateRouteArgs(key: key, user: user));

  static const String name = 'ParentProfileUpdateRoute';
}

class ParentProfileUpdateRouteArgs {
  const ParentProfileUpdateRouteArgs({this.key, required this.user});

  final _i43.Key? key;

  final _i44.User user;

  @override
  String toString() {
    return 'ParentProfileUpdateRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [_i7.PFeesPage]
class PFeesRoute extends _i42.PageRouteInfo<PFeesRouteArgs> {
  PFeesRoute(
      {_i43.Key? key, required String studentId, required String? nextDueDate})
      : super(PFeesRoute.name,
            path: '/p-fees-page',
            args: PFeesRouteArgs(
                key: key, studentId: studentId, nextDueDate: nextDueDate));

  static const String name = 'PFeesRoute';
}

class PFeesRouteArgs {
  const PFeesRouteArgs(
      {this.key, required this.studentId, required this.nextDueDate});

  final _i43.Key? key;

  final String studentId;

  final String? nextDueDate;

  @override
  String toString() {
    return 'PFeesRouteArgs{key: $key, studentId: $studentId, nextDueDate: $nextDueDate}';
  }
}

/// generated route for
/// [_i8.PComplainPage]
class PComplainRoute extends _i42.PageRouteInfo<PComplainRouteArgs> {
  PComplainRoute({_i43.Key? key, required String studentId})
      : super(PComplainRoute.name,
            path: '/p-complain-page',
            args: PComplainRouteArgs(key: key, studentId: studentId));

  static const String name = 'PComplainRoute';
}

class PComplainRouteArgs {
  const PComplainRouteArgs({this.key, required this.studentId});

  final _i43.Key? key;

  final String studentId;

  @override
  String toString() {
    return 'PComplainRouteArgs{key: $key, studentId: $studentId}';
  }
}

/// generated route for
/// [_i9.StudentAttendancePage]
class StudentAttendanceRoute
    extends _i42.PageRouteInfo<StudentAttendanceRouteArgs> {
  StudentAttendanceRoute({_i43.Key? key})
      : super(StudentAttendanceRoute.name,
            path: '/student-attendance-page',
            args: StudentAttendanceRouteArgs(key: key));

  static const String name = 'StudentAttendanceRoute';
}

class StudentAttendanceRouteArgs {
  const StudentAttendanceRouteArgs({this.key});

  final _i43.Key? key;

  @override
  String toString() {
    return 'StudentAttendanceRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i10.HomeworkListPage]
class HomeworkListRoute extends _i42.PageRouteInfo<void> {
  const HomeworkListRoute()
      : super(HomeworkListRoute.name, path: '/homework-list-page');

  static const String name = 'HomeworkListRoute';
}

/// generated route for
/// [_i11.VideoPlayerPage]
class VideoPlayerRoute extends _i42.PageRouteInfo<VideoPlayerRouteArgs> {
  VideoPlayerRoute({_i43.Key? key, required String videoUrl})
      : super(VideoPlayerRoute.name,
            path: '/video-player-page',
            args: VideoPlayerRouteArgs(key: key, videoUrl: videoUrl));

  static const String name = 'VideoPlayerRoute';
}

class VideoPlayerRouteArgs {
  const VideoPlayerRouteArgs({this.key, required this.videoUrl});

  final _i43.Key? key;

  final String videoUrl;

  @override
  String toString() {
    return 'VideoPlayerRouteArgs{key: $key, videoUrl: $videoUrl}';
  }
}

/// generated route for
/// [_i12.MyPdfViewerPage]
class MyPdfViewerRoute extends _i42.PageRouteInfo<MyPdfViewerRouteArgs> {
  MyPdfViewerRoute({_i43.Key? key, required String pdfUrl, String title = ""})
      : super(MyPdfViewerRoute.name,
            path: '/my-pdf-viewer-page',
            args: MyPdfViewerRouteArgs(key: key, pdfUrl: pdfUrl, title: title));

  static const String name = 'MyPdfViewerRoute';
}

class MyPdfViewerRouteArgs {
  const MyPdfViewerRouteArgs({this.key, required this.pdfUrl, this.title = ""});

  final _i43.Key? key;

  final String pdfUrl;

  final String title;

  @override
  String toString() {
    return 'MyPdfViewerRouteArgs{key: $key, pdfUrl: $pdfUrl, title: $title}';
  }
}

/// generated route for
/// [_i13.StudentNoticeboardPage]
class StudentNoticeboardRoute
    extends _i42.PageRouteInfo<StudentNoticeboardRouteArgs> {
  StudentNoticeboardRoute({_i43.Key? key})
      : super(StudentNoticeboardRoute.name,
            path: '/student-noticeboard-page',
            args: StudentNoticeboardRouteArgs(key: key));

  static const String name = 'StudentNoticeboardRoute';
}

class StudentNoticeboardRouteArgs {
  const StudentNoticeboardRouteArgs({this.key});

  final _i43.Key? key;

  @override
  String toString() {
    return 'StudentNoticeboardRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i14.TeacherDashboardPage]
class TeacherDashboardRoute extends _i42.PageRouteInfo<void> {
  const TeacherDashboardRoute()
      : super(TeacherDashboardRoute.name, path: '/teacher-dashboard-page');

  static const String name = 'TeacherDashboardRoute';
}

/// generated route for
/// [_i15.TeacherComplainListPage]
class TeacherComplainListRoute extends _i42.PageRouteInfo<void> {
  const TeacherComplainListRoute()
      : super(TeacherComplainListRoute.name,
            path: '/teacher-complain-list-page');

  static const String name = 'TeacherComplainListRoute';
}

/// generated route for
/// [_i16.TeacherAttendancePage]
class TeacherAttendanceRoute extends _i42.PageRouteInfo<void> {
  const TeacherAttendanceRoute()
      : super(TeacherAttendanceRoute.name, path: '/teacher-attendance-page');

  static const String name = 'TeacherAttendanceRoute';
}

/// generated route for
/// [_i17.TStudentsPage]
class TStudentsRoute extends _i42.PageRouteInfo<TStudentsRouteArgs> {
  TStudentsRoute({_i43.Key? key, required int classId})
      : super(TStudentsRoute.name,
            path: '/t-students-page',
            args: TStudentsRouteArgs(key: key, classId: classId));

  static const String name = 'TStudentsRoute';
}

class TStudentsRouteArgs {
  const TStudentsRouteArgs({this.key, required this.classId});

  final _i43.Key? key;

  final int classId;

  @override
  String toString() {
    return 'TStudentsRouteArgs{key: $key, classId: $classId}';
  }
}

/// generated route for
/// [_i18.ApplicationFormPage]
class ApplicationFormRoute extends _i42.PageRouteInfo<void> {
  const ApplicationFormRoute()
      : super(ApplicationFormRoute.name, path: '/application-form-page');

  static const String name = 'ApplicationFormRoute';
}

/// generated route for
/// [_i19.FeesPage]
class FeesRoute extends _i42.PageRouteInfo<void> {
  const FeesRoute() : super(FeesRoute.name, path: '/fees-page');

  static const String name = 'FeesRoute';
}

/// generated route for
/// [_i20.AddComplainPage]
class AddComplainRoute extends _i42.PageRouteInfo<AddComplainRouteArgs> {
  AddComplainRoute(
      {_i43.Key? key,
      required String session,
      required String classId,
      required String className,
      required String studentId,
      required String studentName})
      : super(AddComplainRoute.name,
            path: '/add-complain-page',
            args: AddComplainRouteArgs(
                key: key,
                session: session,
                classId: classId,
                className: className,
                studentId: studentId,
                studentName: studentName));

  static const String name = 'AddComplainRoute';
}

class AddComplainRouteArgs {
  const AddComplainRouteArgs(
      {this.key,
      required this.session,
      required this.classId,
      required this.className,
      required this.studentId,
      required this.studentName});

  final _i43.Key? key;

  final String session;

  final String classId;

  final String className;

  final String studentId;

  final String studentName;

  @override
  String toString() {
    return 'AddComplainRouteArgs{key: $key, session: $session, classId: $classId, className: $className, studentId: $studentId, studentName: $studentName}';
  }
}

/// generated route for
/// [_i21.StudentComplainPage]
class StudentComplainRoute
    extends _i42.PageRouteInfo<StudentComplainRouteArgs> {
  StudentComplainRoute({_i43.Key? key, required String classId})
      : super(StudentComplainRoute.name,
            path: '/student-complain-page',
            args: StudentComplainRouteArgs(key: key, classId: classId));

  static const String name = 'StudentComplainRoute';
}

class StudentComplainRouteArgs {
  const StudentComplainRouteArgs({this.key, required this.classId});

  final _i43.Key? key;

  final String classId;

  @override
  String toString() {
    return 'StudentComplainRouteArgs{key: $key, classId: $classId}';
  }
}

/// generated route for
/// [_i22.SuccessfullPage]
class SuccessfullRoute extends _i42.PageRouteInfo<SuccessfullRouteArgs> {
  SuccessfullRoute({_i43.Key? key, required String paymentStatus})
      : super(SuccessfullRoute.name,
            path: '/successfull-page',
            args: SuccessfullRouteArgs(key: key, paymentStatus: paymentStatus));

  static const String name = 'SuccessfullRoute';
}

class SuccessfullRouteArgs {
  const SuccessfullRouteArgs({this.key, required this.paymentStatus});

  final _i43.Key? key;

  final String paymentStatus;

  @override
  String toString() {
    return 'SuccessfullRouteArgs{key: $key, paymentStatus: $paymentStatus}';
  }
}

/// generated route for
/// [_i23.HtmlReaderPage]
class HtmlReaderRoute extends _i42.PageRouteInfo<HtmlReaderRouteArgs> {
  HtmlReaderRoute({_i43.Key? key, required String title, required String data})
      : super(HtmlReaderRoute.name,
            path: '/html-reader-page',
            args: HtmlReaderRouteArgs(key: key, title: title, data: data));

  static const String name = 'HtmlReaderRoute';
}

class HtmlReaderRouteArgs {
  const HtmlReaderRouteArgs(
      {this.key, required this.title, required this.data});

  final _i43.Key? key;

  final String title;

  final String data;

  @override
  String toString() {
    return 'HtmlReaderRouteArgs{key: $key, title: $title, data: $data}';
  }
}

/// generated route for
/// [_i24.SFeesPage]
class SFeesRoute extends _i42.PageRouteInfo<SFeesRouteArgs> {
  SFeesRoute(
      {_i43.Key? key, required String studentId, required String nextDueDate})
      : super(SFeesRoute.name,
            path: '/s-fees-page',
            args: SFeesRouteArgs(
                key: key, studentId: studentId, nextDueDate: nextDueDate));

  static const String name = 'SFeesRoute';
}

class SFeesRouteArgs {
  const SFeesRouteArgs(
      {this.key, required this.studentId, required this.nextDueDate});

  final _i43.Key? key;

  final String studentId;

  final String nextDueDate;

  @override
  String toString() {
    return 'SFeesRouteArgs{key: $key, studentId: $studentId, nextDueDate: $nextDueDate}';
  }
}

/// generated route for
/// [_i25.StudentApplicationFormPage]
class StudentApplicationFormRoute extends _i42.PageRouteInfo<void> {
  const StudentApplicationFormRoute()
      : super(StudentApplicationFormRoute.name,
            path: '/student-application-form-page');

  static const String name = 'StudentApplicationFormRoute';
}

/// generated route for
/// [_i26.NotificationPage]
class NotificationRoute extends _i42.PageRouteInfo<void> {
  const NotificationRoute()
      : super(NotificationRoute.name, path: '/notification-page');

  static const String name = 'NotificationRoute';
}

/// generated route for
/// [_i27.StudyMaterialPage]
class StudyMaterialRoute extends _i42.PageRouteInfo<void> {
  const StudyMaterialRoute()
      : super(StudyMaterialRoute.name, path: '/study-material-page');

  static const String name = 'StudyMaterialRoute';
}

/// generated route for
/// [_i28.THomeworkPage]
class THomeworkRoute extends _i42.PageRouteInfo<THomeworkRouteArgs> {
  THomeworkRoute({_i43.Key? key, required String classId})
      : super(THomeworkRoute.name,
            path: '/t-homework-page',
            args: THomeworkRouteArgs(key: key, classId: classId));

  static const String name = 'THomeworkRoute';
}

class THomeworkRouteArgs {
  const THomeworkRouteArgs({this.key, required this.classId});

  final _i43.Key? key;

  final String classId;

  @override
  String toString() {
    return 'THomeworkRouteArgs{key: $key, classId: $classId}';
  }
}

/// generated route for
/// [_i29.TStudyMaterialPage]
class TStudyMaterialRoute extends _i42.PageRouteInfo<TStudyMaterialRouteArgs> {
  TStudyMaterialRoute({_i43.Key? key, required String classId})
      : super(TStudyMaterialRoute.name,
            path: '/t-study-material-page',
            args: TStudyMaterialRouteArgs(key: key, classId: classId));

  static const String name = 'TStudyMaterialRoute';
}

class TStudyMaterialRouteArgs {
  const TStudyMaterialRouteArgs({this.key, required this.classId});

  final _i43.Key? key;

  final String classId;

  @override
  String toString() {
    return 'TStudyMaterialRouteArgs{key: $key, classId: $classId}';
  }
}

/// generated route for
/// [_i30.AddHomeworkPage]
class AddHomeworkRoute extends _i42.PageRouteInfo<void> {
  const AddHomeworkRoute()
      : super(AddHomeworkRoute.name, path: '/add-homework-page');

  static const String name = 'AddHomeworkRoute';
}

/// generated route for
/// [_i31.AddStudyMaterialPage]
class AddStudyMaterialRoute extends _i42.PageRouteInfo<void> {
  const AddStudyMaterialRoute()
      : super(AddStudyMaterialRoute.name, path: '/add-study-material-page');

  static const String name = 'AddStudyMaterialRoute';
}

/// generated route for
/// [_i32.StudentDetailsPage]
class StudentDetailsRoute extends _i42.PageRouteInfo<StudentDetailsRouteArgs> {
  StudentDetailsRoute({_i43.Key? key, required _i45.PStudent student})
      : super(StudentDetailsRoute.name,
            path: '/student-details-page',
            args: StudentDetailsRouteArgs(key: key, student: student));

  static const String name = 'StudentDetailsRoute';
}

class StudentDetailsRouteArgs {
  const StudentDetailsRouteArgs({this.key, required this.student});

  final _i43.Key? key;

  final _i45.PStudent student;

  @override
  String toString() {
    return 'StudentDetailsRouteArgs{key: $key, student: $student}';
  }
}

/// generated route for
/// [_i33.PTransportAmountPage]
class PTransportAmountRoute
    extends _i42.PageRouteInfo<PTransportAmountRouteArgs> {
  PTransportAmountRoute(
      {_i43.Key? key, required String studentId, required String nextDueDate})
      : super(PTransportAmountRoute.name,
            path: '/p-transport-amount-page',
            args: PTransportAmountRouteArgs(
                key: key, studentId: studentId, nextDueDate: nextDueDate));

  static const String name = 'PTransportAmountRoute';
}

class PTransportAmountRouteArgs {
  const PTransportAmountRouteArgs(
      {this.key, required this.studentId, required this.nextDueDate});

  final _i43.Key? key;

  final String studentId;

  final String nextDueDate;

  @override
  String toString() {
    return 'PTransportAmountRouteArgs{key: $key, studentId: $studentId, nextDueDate: $nextDueDate}';
  }
}

/// generated route for
/// [_i34.MarkAttendancePage]
class MarkAttendanceRoute extends _i42.PageRouteInfo<MarkAttendanceRouteArgs> {
  MarkAttendanceRoute({_i43.Key? key, required String classId})
      : super(MarkAttendanceRoute.name,
            path: '/mark-attendance-page',
            args: MarkAttendanceRouteArgs(key: key, classId: classId));

  static const String name = 'MarkAttendanceRoute';
}

class MarkAttendanceRouteArgs {
  const MarkAttendanceRouteArgs({this.key, required this.classId});

  final _i43.Key? key;

  final String classId;

  @override
  String toString() {
    return 'MarkAttendanceRouteArgs{key: $key, classId: $classId}';
  }
}

/// generated route for
/// [_i35.LeaveListPage]
class LeaveListRoute extends _i42.PageRouteInfo<void> {
  const LeaveListRoute() : super(LeaveListRoute.name, path: '/leave-list-page');

  static const String name = 'LeaveListRoute';
}

/// generated route for
/// [_i36.AddLeavePage]
class AddLeaveRoute extends _i42.PageRouteInfo<void> {
  const AddLeaveRoute() : super(AddLeaveRoute.name, path: '/add-leave-page');

  static const String name = 'AddLeaveRoute';
}

/// generated route for
/// [_i37.ClassListPage]
class ClassListRoute extends _i42.PageRouteInfo<ClassListRouteArgs> {
  ClassListRoute({_i43.Key? key, required int type})
      : super(ClassListRoute.name,
            path: '/class-list-page',
            args: ClassListRouteArgs(key: key, type: type));

  static const String name = 'ClassListRoute';
}

class ClassListRouteArgs {
  const ClassListRouteArgs({this.key, required this.type});

  final _i43.Key? key;

  final int type;

  @override
  String toString() {
    return 'ClassListRouteArgs{key: $key, type: $type}';
  }
}

/// generated route for
/// [_i38.ShowEventsPage]
class ShowEventsRoute extends _i42.PageRouteInfo<ShowEventsRouteArgs> {
  ShowEventsRoute({_i43.Key? key})
      : super(ShowEventsRoute.name,
            path: '/show-events-page', args: ShowEventsRouteArgs(key: key));

  static const String name = 'ShowEventsRoute';
}

class ShowEventsRouteArgs {
  const ShowEventsRouteArgs({this.key});

  final _i43.Key? key;

  @override
  String toString() {
    return 'ShowEventsRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i39.NoticePage]
class NoticeRoute extends _i42.PageRouteInfo<NoticeRouteArgs> {
  NoticeRoute({_i43.Key? key, required int studentId})
      : super(NoticeRoute.name,
            path: '/notice-page',
            args: NoticeRouteArgs(key: key, studentId: studentId));

  static const String name = 'NoticeRoute';
}

class NoticeRouteArgs {
  const NoticeRouteArgs({this.key, required this.studentId});

  final _i43.Key? key;

  final int studentId;

  @override
  String toString() {
    return 'NoticeRouteArgs{key: $key, studentId: $studentId}';
  }
}

/// generated route for
/// [_i40.PHomeworkListPage]
class PHomeworkListRoute extends _i42.PageRouteInfo<PHomeworkListRouteArgs> {
  PHomeworkListRoute({_i43.Key? key, required int studentId})
      : super(PHomeworkListRoute.name,
            path: '/p-homework-list-page',
            args: PHomeworkListRouteArgs(key: key, studentId: studentId));

  static const String name = 'PHomeworkListRoute';
}

class PHomeworkListRouteArgs {
  const PHomeworkListRouteArgs({this.key, required this.studentId});

  final _i43.Key? key;

  final int studentId;

  @override
  String toString() {
    return 'PHomeworkListRouteArgs{key: $key, studentId: $studentId}';
  }
}

/// generated route for
/// [_i41.SComplainPage]
class SComplainRoute extends _i42.PageRouteInfo<void> {
  const SComplainRoute() : super(SComplainRoute.name, path: '/s-complain-page');

  static const String name = 'SComplainRoute';
}
