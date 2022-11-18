import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_home/domain/events.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_home/shared/provider.dart';
import 'package:table_calendar/table_calendar.dart';

class ShowEventsPage extends HookConsumerWidget {
  ShowEventsPage({Key? key}) : super(key: key);
  var list = ["2022-06-14", "2022-06-12"];
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var isLoading = useState<bool>(false);
    var events = useState<List<Events>>([]);
    var atte = useState<Events?>(null);
    var isExist = useState<bool>(false);
    ref.watch(showEventsProvider).when(data: (data) {
      events.value = data;
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
        title: Text(
          "events",
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
              : /* events.value.isEmpty
                  ? const Center(
                      child: Text("Events not found"),
                    )
                  :  */
              TableCalendar(
                  eventLoader: (day) {
                    return events.value
                        .where((event) => isSameDay(event.eventdate, day))
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
                    // ref.refresh(eventsProvider);
                  },
                  selectedDayPredicate: (day) {
                    return isSameDay(DateTime.now(), day);
                  },
                  onDaySelected: (d, e) {
                    for (var item in events.value) {
                      print(d.toString().split(" ")[0]);
                      if (item.eventdate.toString().split(" ")[0] ==
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
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColor.primaryColor),
                                ));
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
                            atte.value?.event ?? "--",
                            style: Theme.of(context)
                                .textTheme
                                .headline2!
                                .copyWith(color: AppColor.appWhite),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
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
