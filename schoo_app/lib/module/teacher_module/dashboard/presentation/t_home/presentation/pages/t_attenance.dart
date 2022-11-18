import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/teacher_attendance.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/shared/provider.dart';
import 'package:table_calendar/table_calendar.dart';

class TeacherAttendancePage extends HookConsumerWidget {
  const TeacherAttendancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var isLoading = useState<bool>(false);
    var attendance = useState<List<TeacherAttendance>>([]);
    var atte = useState<TeacherAttendance?>(null);
    var isExist = useState<bool>(false);
    ref.watch(tAttendanceProvider).when(data: (data) {
      attendance.value = data;
      isLoading.value = false;
      print("data $data");
    }, error: (e, s) {
      isLoading.value = false;
      print("data $e");
    }, loading: () {
      isLoading.value = true;
    });
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Attendance",
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(color: AppColor.appWhite),
        ),
      ),
      body: Column(
        children: [
          isLoading.value
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : attendance.value.isEmpty
                  ? Padding(
                      padding: EdgeInsets.only(top: 0.3.sh),
                      child: const Text("Attendence not found"))
                  : TableCalendar(
                      pageJumpingEnabled: false,
                      eventLoader: (day) {
                        return attendance.value
                            .where((event) => isSameDay(event.date!, day))
                            .toList();
                      },
                      firstDay: DateTime.utc(2010, 10, 16),
                      lastDay: DateTime.utc(2030, 3, 14),
                      focusedDay: DateTime.now(),
                      calendarStyle: const CalendarStyle(
                          markerDecoration: BoxDecoration(
                        color: AppColor.appRed,
                        shape: BoxShape.circle,
                      )),
                      onPageChanged: (date) {
                        // ref.refresh(attendanceProvider);
                      },
                      selectedDayPredicate: (day) {
                        return isSameDay(DateTime.now(), day);
                      },
                      onDaySelected: (d, e) {
                        print(d);
                        for (var item in attendance.value) {
                          print(item.date.toString().split(" ")[0]);
                          print(d.toString().split(" ")[0]);
                          if (item.date.toString().split(" ")[0] ==
                              d.toString().split(" ")[0]) {
                            atte.value = item;
                            isExist.value = true;
                          } else {
                            atte.value = null;
                            isExist.value = false;
                          }
                        }
                        if (!isExist.value) {
                          atte.value = null;
                        }
                      },
                      calendarBuilders: CalendarBuilders(
                        markerBuilder: (BuildContext context, date, events) {
                          if (events.isEmpty) return const SizedBox();
                          return ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: events.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: const EdgeInsets.only(top: 20),
                                  padding: const EdgeInsets.all(1),
                                  child: Container(
                                    // height: 7,
                                    width: 5,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: attendance.value[index].status ==
                                                "Present"
                                            ? AppColor.primaryColor
                                            : AppColor.appBlackColor
                                                .withOpacity(0.6)),
                                  ),
                                );
                              });
                        },
                      ),
                    ),
          const Spacer(),
          Card(
            color: AppColor.greenColor,
            child: SizedBox(
              height: 100.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
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
                            "Present",
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
                            decoration: BoxDecoration(
                                color: AppColor.appBlackColor.withOpacity(0.6),
                                shape: BoxShape.circle),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            "Absent",
                            style: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(color: AppColor.appWhite),
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Holiday",
                            style: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(color: AppColor.appWhite),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            atte.value?.holiday ?? "--",
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
                          Text(
                            "Late Coming",
                            style: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(color: AppColor.appWhite),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            atte.value?.late ?? "--",
                            style: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(color: AppColor.appWhite),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
