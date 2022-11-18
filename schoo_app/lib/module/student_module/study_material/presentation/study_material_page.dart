import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_button.dart';
import 'package:schoo_app/core/presentation/routes/app_routes.gr.dart';
import 'package:schoo_app/module/student_module/study_material/shared/provider.dart';

class StudyMaterialPage extends HookConsumerWidget {
  const StudyMaterialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Study Material",
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(color: AppColor.appWhite),
        ),
      ),
      body: ref.watch(getStudyMaterialProvider).when(data: (data) {
        return data.isEmpty
            ? const Center(
                child: Text("No Data Found"),
              )
            : ListView.builder(
                /*   separatorBuilder: ((context, index) => Divider(
                  color: AppColor.dividerColor.withOpacity(0.7),
                  height: 1.h,
                )), */
                itemCount: data.length,
                itemBuilder: ((context, index) => Container(
                      margin: EdgeInsets.all(5.sp),
                      height: 60.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          border: Border.all(
                              color: AppColor.appBlackColor.withOpacity(0.4))),
                      padding: EdgeInsets.all(10.sp),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                        child: Text(
                                            data[index].studyMaterialClass ??
                                                "")),
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
                                        child: Text(data[index].subject ?? "")),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          AppButton(
                              buttonTitle: "Read Book",
                              callback: () {
                                print(data[index].studymaterial!);
                                AutoRouter.of(context).push(MyPdfViewerRoute(
                                    pdfUrl: data[index].studymaterial!));
                              },
                              buttonWidth: 0.3.sw,
                              buttonHeight: 30.h)
                        ],
                      ),
                    )));
      }, error: (e, s) {
        return const Center(
          child: Text("No Data Found"),
        );
      }, loading: () {
        return const Center(
          child: CircularProgressIndicator(
            color: AppColor.primaryColor,
          ),
        );
      }),
    );
  }
}
