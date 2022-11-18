import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_snackbar.dart';
import 'package:schoo_app/core/presentation/routes/app_routes.gr.dart';
import 'package:schoo_app/module/student_module/homework/domain/homework.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/view_homework_state.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/presentation/widgets/teacher_homework_card.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/shared/provider.dart';

class THomeworkPage extends HookConsumerWidget {
  const THomeworkPage({Key? key, required this.classId}) : super(key: key);
  final String classId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var isLoading = useState<bool>(false);
    var homeworkList = useState<List<Homework>>([]);

    var date = useState<String>("");
    ref.listen<ViewHomeworkState>(viewHomeworkProvider, (_, state) {
      state.map(initial: (_) {
        isLoading.value = false;
      }, isLoading: (_) {
        isLoading.value = true;
      }, notLoading: (_) {
        isLoading.value = false;
      }, data: (data) {
        homeworkList.value.clear();
        homeworkList.value.addAll(data.homeworkList);
        print("data");
      }, noData: (_) {
        print("no data");
      }, failure: (s) {
        print("fail");
        homeworkList.value.clear();
      });
    });

    useEffect(() {
      isLoading.value = true;
      Future.delayed(const Duration(seconds: 1), () async {
        date.value =
            "${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}";

        ref
            .read(viewHomeworkProvider.notifier)
            .viewHomework("2022-2023", classId, date.value);
      });
      return null;
    }, []);

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          "Homework",
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(color: AppColor.appWhite),
        ),
      ),
      body: Column(children: [
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
        Expanded(
            child: isLoading.value
                ? const Center(
                    child: CircularProgressIndicator(
                      color: AppColor.primaryColor,
                    ),
                  )
                : homeworkList.value.isEmpty
                    ? Center(
                        child: Text("No Homework Found",
                            style: Theme.of(context)
                                .textTheme
                                .headline1!
                                .copyWith(fontSize: 14.sp)),
                      )
                    : ListView.builder(
                        shrinkWrap: true,
                        itemCount: homeworkList.value.length,
                        itemBuilder: (context, index) => TeacherHomeworkCard(
                              homework: homeworkList.value[index],
                              type: 2,
                            )))
      ]),
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: AppColor.greenColor,
          onPressed: () {
            AutoRouter.of(context).push(const AddHomeworkRoute());
          },
          label: const Text("+ Add Homework")),
    );
  }

  Future<void> showCalender(BuildContext context, dynamic date, String session,
      String classId, WidgetRef ref) async {
    DateTime currentDate = DateTime.now();
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(1900),
        lastDate: DateTime(2050));
    if (pickedDate != currentDate) {
      date.value =
          "${pickedDate?.year}-${pickedDate?.month}-${pickedDate?.day}";
      if (classId.isEmpty || date.value == "Choose Date") {
        AppSnackBar.showInSnackBar(
            "Please choose class , session & date  ", context);
        return;
      }

      ref
          .read(viewHomeworkProvider.notifier)
          .viewHomework(session, classId, date.value);
    }
  }
}
