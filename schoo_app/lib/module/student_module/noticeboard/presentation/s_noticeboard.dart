import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';
import 'package:schoo_app/module/student_module/dashboard/presentation/s_home/domain/notice.dart';
import 'package:schoo_app/module/student_module/dashboard/presentation/s_home/shared/provider.dart';

class StudentNoticeboardPage extends HookConsumerWidget {
  StudentNoticeboardPage({Key? key}) : super(key: key);
  var list = ["2022-06-14", "2022-06-12"];
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var isLoading = useState<bool>(false);
    var noticeList = useState<List<Notice>>([]);
    var notice = useState<Notice?>(null);
    var isExist = useState<bool>(false);
    ref.watch(noticeProvider).when(data: (data) {
      noticeList.value = data;
      isLoading.value = false;
      print("data $data");
    }, error: (e, s) {
      isLoading.value = false;
      print("data $e");
    }, loading: () {
      isLoading.value = true;
    });

    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text(
            "Notice board",
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: AppColor.appWhite),
          ),
        ),
        body: isLoading.value
            ? const Center(
                child: CircularProgressIndicator(
                  color: AppColor.primaryColor,
                ),
              )
            : ListView.builder(
                itemCount: noticeList.value.length,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.all(5.sp),
                  child: Card(
                    elevation: 1,
                    child: Container(
                      padding: EdgeInsets.all(5.sp),
                      width: 1.sw,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              // Expanded(child: Container()),
                              Expanded(
                                flex: 4,
                                child: Text(
                                  "Notice date",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline1!
                                      .copyWith(fontSize: 13.sp),
                                ),
                              ),
                              Expanded(
                                flex: 6,
                                child: Text(
                                  ":  ${noticeList.value[index].noticeDate.toString().split(" ")[0]}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline3!
                                      .copyWith(
                                          color: AppColor.appBlackColor
                                              .withOpacity(0.6)),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              //  Expanded(child: Container()),
                              Expanded(
                                flex: 4,
                                child: Text(
                                  "Notice title",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline1!
                                      .copyWith(fontSize: 13.sp),
                                ),
                              ),
                              Expanded(
                                flex: 6,
                                child: Text(
                                  ":  ${noticeList.value[index].noticeHeading}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline3!
                                      .copyWith(
                                          color: AppColor.appBlackColor
                                              .withOpacity(0.6)),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              //  Expanded(child: Container()),
                              Expanded(
                                flex: 4,
                                child: Text(
                                  "Description",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline1!
                                      .copyWith(fontSize: 13.sp),
                                ),
                              ),
                              Expanded(
                                flex: 6,
                                child: Text(
                                  ":  ${noticeList.value[index].noticeDetails}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline3!
                                      .copyWith(
                                          color: AppColor.appBlackColor
                                              .withOpacity(0.6)),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      // color: AppColor.appBlue,
                      //decoration: B,
                    ),
                  ),
                ),
              )
        /*  Column(
        children: [
          isLoading.value
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : TableCalendar(
                  eventLoader: (day) {
                    return noticeList.value
                        .where((event) => isSameDay(event.noticeDate, day))
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
                    for (var item in noticeList.value) {
                      print(item.noticeDate.toString().split(" ")[0]);
                      print(d.toString().split(" ")[0]);
                      if (item.noticeDate.toString().split(" ")[0] ==
                          d.toString().split(" ")[0]) {
                        notice.value = item;
                        isExist.value = true;
                      } else {
                        notice.value = null;
                        isExist.value = false;
                      }
                    }
                    if (!isExist.value) {
                      notice.value = null;
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
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColor.primaryColor)),
                            );
                          });
                    },
                  ),
                ),
          const Spacer(),
          Card(
            color: AppColor.secondaryColor,
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
                          Text(
                            "Notice title -",
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
                            "Notice details -",
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
                            notice.value?.noticeHeading ?? "",
                            style: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(color: AppColor.appWhite),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            //notice.value?.holiday ?? "--",
                            "",
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
                            notice.value?.noticeDetails ?? "",
                            style: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(color: AppColor.appWhite),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            //  atte.value?.lateComing ?? "--",
                            "",
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
      ), */
        );
  }
}
