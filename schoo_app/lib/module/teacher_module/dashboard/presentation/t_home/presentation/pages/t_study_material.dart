import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_button.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_snackbar.dart';
import 'package:schoo_app/core/presentation/routes/app_routes.gr.dart';
import 'package:schoo_app/module/student_module/study_material/domain/study_material.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/view_studymaterial_state.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/shared/provider.dart';

class TStudyMaterialPage extends HookConsumerWidget {
  const TStudyMaterialPage({Key? key, required this.classId}) : super(key: key);
  final String classId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var isLoading = useState<bool>(false);
    var studymaterialList = useState<List<StudyMaterial>>([]);

    var date = useState<String>("");
    ref.listen<ViewStudyMaterialState>(viewStudymaterialProvider, (_, state) {
      state.map(initial: (_) {
        isLoading.value = false;
      }, isLoading: (_) {
        isLoading.value = true;
      }, notLoading: (_) {
        isLoading.value = false;
      }, data: (data) {
        studymaterialList.value.clear();
        studymaterialList.value.addAll(data.tStudent);
        print(studymaterialList.value.length);
      }, noData: (_) {
        print("no data");
      }, failure: (s) {
        print("faile");
        studymaterialList.value.clear();
      });
    });

    useEffect(() {
      isLoading.value = true;
      Future.delayed(const Duration(seconds: 1), () async {
        date.value =
            "${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}";
        ref
            .read(viewStudymaterialProvider.notifier)
            .viewStudyMaterial("2022-2023", classId, date.value);
      });
      return null;
    }, []);
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          "Study Material",
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
                : studymaterialList.value.isEmpty
                    ? const Center(
                        child: Text("No Study material Found"),
                      )
                    : ListView.builder(
                        shrinkWrap: true,
                        itemCount: studymaterialList.value.length,
                        itemBuilder: (context, index) => Container(
                              margin: EdgeInsets.all(5.sp),
                              height: 60.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.r),
                                  border: Border.all(
                                      color: AppColor.appBlackColor
                                          .withOpacity(0.4))),
                              padding: EdgeInsets.all(10.sp),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                "Class Name:",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1!
                                                    .copyWith(),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5.w,
                                            ),
                                            Expanded(
                                                child: Text(studymaterialList
                                                    .value[index]
                                                    .studyMaterialClass!)),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                "Subject Name:",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1!
                                                    .copyWith(),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5.w,
                                            ),
                                            Expanded(
                                                child: Text(studymaterialList
                                                    .value[index].subject!)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  AppButton(
                                      buttonTitle: "Read Book",
                                      callback: () {
                                        AutoRouter.of(context).push(
                                            MyPdfViewerRoute(
                                                pdfUrl: studymaterialList
                                                    .value[index]
                                                    .studymaterial!));
                                      },
                                      buttonWidth: 0.3.sw,
                                      buttonHeight: 30.h)
                                ],
                              ),
                            ))),
      ]),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            AutoRouter.of(context).push(const AddStudyMaterialRoute());
          },
          label: const Text("+ Add Study Material")),
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
      if (session.isEmpty || classId.isEmpty || date.value == "Choose Date") {
        AppSnackBar.showInSnackBar(
            "Please choose class , session & date  ", context);
        return;
      }

      ref
          .read(viewStudymaterialProvider.notifier)
          .viewStudyMaterial(session, classId, date.value);
    }
  }
}
