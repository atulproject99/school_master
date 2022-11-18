import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_button.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_snackbar.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/attendence_student.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/mark_attendence_state.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/student_attendance_state.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/shared/provider.dart';

class MarkAttendancePage extends HookConsumerWidget {
  const MarkAttendancePage({Key? key, required this.classId}) : super(key: key);
  final String classId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var isLoading = useState<bool>(false);
    var studentList = useState<List<AttendanceStudent>>([]);
    var date = useState<String>("");
    var tempList = ref.watch(tempAttendenceProvider);

    ref.listen<StudentAttendenceState>(getStudentAttendanceProvider,
        (_, state) {
      state.map(
          initial: (_) {
            ref.read(tempAttendenceProvider.notifier).removeAll();
            isLoading.value = false;
          },
          isLoading: (_) {
            isLoading.value = true;
          },
          notLoading: (_) {
            isLoading.value = false;
          },
          data: (data) {
            ref.read(tempAttendenceProvider.notifier).removeAll();
            ref.read(tempAttendenceProvider.notifier).addAllItem(data.tStudent
                .where((element) => element.attendanceStatus != "Absent")
                .toList());
            studentList.value.clear();
            studentList.value.addAll(data.tStudent);
          },
          noData: (_) {},
          failure: (_) {});
    });
    ref.listen<MarkAttendenceState>(markAttendenceProvider, (_, state) {
      state.maybeMap(
          orElse: () {},
          success: (_) {
            AppSnackBar.showInSnackBar(
                "Attendance Submit Successfully", context);
            Future.delayed(const Duration(seconds: 1), () async {
              date.value =
                  "${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}";

              ref
                  .read(getStudentAttendanceProvider.notifier)
                  .getStudentAttendance("2022-2023", classId, date.value);
            });
            Navigator.of(context).pop();
          },
          failure: (s) {
            AppSnackBar.showInSnackBar(s.msg, context);
            Navigator.of(context).pop();
          });
    });

    useEffect(() {
      isLoading.value = true;
      Future.delayed(const Duration(seconds: 1), () async {
        date.value =
            "${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}";

        ref
            .read(getStudentAttendanceProvider.notifier)
            .getStudentAttendance("2022-2023", classId, date.value);
      });

      return null;
    }, []);

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          "Mark Attendence",
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(color: AppColor.appWhite),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.all(2.sp),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.r)),
              child: Padding(
                padding: EdgeInsets.all(5.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5.sp),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Text("Date:- ${date.value} ",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline4!
                                      .copyWith(color: AppColor.appBlackColor)),
                            ),
                            Expanded(child: Container()),
                            Expanded(
                                child: GestureDetector(
                                    onTap: () {
                                      showCalender(context, date, "2022-2023",
                                          classId, ref);
                                    },
                                    child: const Icon(Icons.calendar_month,
                                        color: AppColor.primaryColor))),
                          ]),
                    ),
                    SizedBox(height: 5.h),
                    Divider(
                      color: AppColor.dividerColor.withOpacity(0.5),
                      height: 2.h,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Expanded(
            flex: 7,
            child: isLoading.value
                ? const Center(
                    child: CircularProgressIndicator(
                      color: AppColor.primaryColor,
                    ),
                  )
                : studentList.value.isEmpty
                    ? const Center(
                        child: Text("No Student Found"),
                      )
                    : ListView.builder(
                        shrinkWrap: true,
                        itemCount: studentList.value.length,
                        itemBuilder: (context, index) {
                          var student = studentList.value[index];
                          return InkWell(
                            onTap: () {
                              if (tempList.contains(student)) {
                                ref
                                    .read(tempAttendenceProvider.notifier)
                                    .remove(student);
                              } else {
                                ref
                                    .read(tempAttendenceProvider.notifier)
                                    .addItem(student);
                              }
                            },
                            child: Card(
                              child: Container(
                                padding: EdgeInsets.all(10.sp),
                                width: 150.h,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.radio_button_checked,
                                        color:
                                            student.attendanceStatus != "Absent"
                                                ? AppColor.primaryColor
                                                : tempList.contains(student)
                                                    ? AppColor.primaryColor
                                                    : AppColor.lightRedColor),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Expanded(
                                      child: Text(
                                        student.studentname! +
                                            "( " +
                                            student.schNo.toString() +
                                            "/ ${student.registrationNo ?? 0}" +
                                            " )",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline4!
                                            .copyWith(
                                                color: AppColor.appBlackColor),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 3.h,
                                    ),
                                  ],
                                ),
                                margin: EdgeInsets.all(1.sp),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.r),
                                  /*  color: data.feestatus![index] == "Paid"
                                    ? AppColor.greenColor
                                    : tempList.contains(fee)
                                        ? AppColor.secondaryColor
                                        : AppColor.primaryColor */
                                ),
                              ),
                            ),
                          );
                        }),
          ),
          Expanded(
              flex: 1,
              child: Container(
                color: AppColor.greenColor,
                child: Row(children: [
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 15.h,
                            width: 15.w,
                            decoration: const BoxDecoration(
                                color: AppColor.primaryColor,
                                shape: BoxShape.circle),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            "Present  ${studentList.value.where((element) => element.attendanceStatus != "Absent").toList().length}",
                            style: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(color: AppColor.appWhite),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 15.h,
                            width: 15.w,
                            decoration: const BoxDecoration(
                                color: AppColor.lightRedColor,
                                shape: BoxShape.circle),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            "Absent ${studentList.value.where((element) => element.attendanceStatus == "Absent").toList().length}",
                            style: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(color: AppColor.appWhite),
                          ),
                        ],
                      )
                    ],
                  ),
                  const Spacer(),
                  Flexible(
                    child: AppButton(
                        buttonTitle: "Mark Attendence",
                        callback: () {
                          showDialog(
                              barrierDismissible: false,
                              context: context,
                              builder: (context) => Dialog(
                                    child: Container(
                                      padding: EdgeInsets.all(5.sp),
                                      height: 90.h,
                                      width: 0.5.sw,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                                "Are you sure want submit attendence?",
                                                textAlign: TextAlign.center,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline3!
                                                    .copyWith(
                                                        color: AppColor
                                                            .appBlackColor)),
                                          ),
                                          SizedBox(
                                            height: 10.h,
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(
                                                width: 10.w,
                                              ),
                                              Flexible(
                                                child: AppButton(
                                                    buttonTitle: "Yes",
                                                    callback: () {
                                                      ref
                                                          .read(
                                                              markAttendenceProvider
                                                                  .notifier)
                                                          .markAttendence(
                                                              tempList
                                                                  .map((e) =>
                                                                      e.id)
                                                                  .toList(),
                                                              "2022-2023",
                                                              classId,
                                                              date.value,
                                                              context);
                                                    },
                                                    buttonWidth: 0.3.sw,
                                                    buttonHeight: 30.h),
                                              ),
                                              SizedBox(
                                                width: 10.w,
                                              ),
                                              Flexible(
                                                child: AppButton(
                                                    buttonTitle: "No",
                                                    bgColor:
                                                        AppColor.lightRedColor,
                                                    callback: () {
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                    buttonWidth: 0.3.sw,
                                                    buttonHeight: 30.h),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ));
                        },
                        bgColor: AppColor.appWhite,
                        textColor: AppColor.appBlackColor,
                        buttonWidth: 0.4.sw,
                        buttonHeight: 40.h),
                  ),
                  SizedBox(
                    width: 10.w,
                  )
                ]),
              ))
        ],
      ),
    );
  }

  Future<void> showCalender(BuildContext context, dynamic date, String session,
      String classId, WidgetRef ref) async {
    DateTime currentDate = DateTime.now();
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(1900),
        lastDate: currentDate);
    if (pickedDate != null) {
      if (pickedDate != currentDate) {
        date.value = "${pickedDate.year}-${pickedDate.month}-${pickedDate.day}";
        if (session.isEmpty || classId.isEmpty || date.value == "Choose Date") {
          AppSnackBar.showInSnackBar(
              "Please choose class , session & date  ", context);
          return;
        }

        ref
            .read(getStudentAttendanceProvider.notifier)
            .getStudentAttendance(session, classId, date.value);
      }
    }
  }
}
