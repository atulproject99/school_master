import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_button.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_snackbar.dart';
import 'package:schoo_app/core/presentation/routes/app_routes.gr.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_home/shared/provider.dart';
import 'package:schoo_app/module/student_module/homework/domain/homework.dart';

class ParentHomeworkCard extends HookConsumerWidget {
  const ParentHomeworkCard(
      {Key? key, required this.homework, this.type = 1, this.studentId = 0})
      : super(key: key);
  final Homework homework;
  final int studentId;
  final int type;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      // height: 150.h,
      padding: EdgeInsets.all(5.sp),
      width: 1.sw,
      margin: EdgeInsets.all(5.sp),
      child: Column(
        children: [
          SizedBox(
            height: 5.h,
          ),
          /*   Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(child: Container()),
              Expanded(
                flex: 4,
                child: Text(
                  "Title",
                  style: Theme.of(context).textTheme.headline3!.copyWith(),
                ),
              ),
              Expanded(
                flex: 6,
                child: Text(
                  ": Chemistry",
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: AppColor.appBlackColor.withOpacity(0.6)),
                ),
              )
            ],
          ),
          SizedBox(
            height: 5.h,
          ), */
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(child: Container()),
              Expanded(
                flex: 4,
                child: Text(
                  "Class",
                  style: Theme.of(context).textTheme.headline3!.copyWith(),
                ),
              ),
              Expanded(
                flex: 6,
                child: Text(
                  ": class ${homework.homeworkClass}",
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: AppColor.appBlackColor.withOpacity(0.6)),
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
              Expanded(child: Container()),
              Expanded(
                flex: 4,
                child: Text(
                  "Subject",
                  style: Theme.of(context).textTheme.headline3!.copyWith(),
                ),
              ),
              Expanded(
                flex: 6,
                child: Text(
                  ": ${homework.subject}",
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: AppColor.appBlackColor.withOpacity(0.6)),
                ),
              )
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          /* Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(child: Container()),
              Expanded(
                flex: 4,
                child: Text(
                  "Status",
                  style: Theme.of(context).textTheme.headline3!.copyWith(),
                ),
              ),
              Expanded(
                flex: 6,
                child: Text(
                  homework.responsestatus == "No" ? "Pending" : "Complete",
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: AppColor.appRed),
                ),
              )
            ],
          ), */
          SizedBox(
            height: 5.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(child: Container()),
              Expanded(
                flex: 4,
                child: Text(
                  "Submission Date",
                  style: Theme.of(context).textTheme.headline3!.copyWith(),
                ),
              ),
              Expanded(
                flex: 6,
                child: Text(
                  ": ${homework.date}",
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: AppColor.appBlackColor.withOpacity(0.6)),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              homework.pdf == null
                  ? const Text("")
                  : Expanded(
                      flex: 1,
                      child: Visibility(
                        child: AppButton(
                            buttonTitle: "VIEW PDF",
                            callback: () {
                              if (homework.pdf == null) {
                                AppSnackBar.showInSnackBar(
                                    "No Pdf File", context);
                              } else {
                                AutoRouter.of(context).push(
                                    MyPdfViewerRoute(pdfUrl: homework.pdf!));
                              }
                            },
                            buttonWidth: 0.8.sw,
                            borderRadius: 5,
                            bgColor: AppColor.primaryColor,
                            buttonHeight: 35.h),
                      )),
              SizedBox(
                width: 5.w,
              ),
              homework.videolink == null
                  ? const Text("")
                  : Expanded(
                      flex: 1,
                      child: Visibility(
                        child: AppButton(
                            buttonTitle: "VIEW VIDEO",
                            bgColor: AppColor.primaryColor,
                            callback: () {
                              if (homework.videolink == null) {
                                AppSnackBar.showInSnackBar("No Video", context);
                              } else {
                                AutoRouter.of(context).push(VideoPlayerRoute(
                                    videoUrl: homework.videolink!));
                              }
                            },
                            buttonWidth: 0.8.sw,
                            borderRadius: 5,
                            buttonHeight: 35.h),
                      ),
                    ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Visibility(
            visible: homework.responsestatus == "No" ? false : true,
            child: AppButton(
                buttonTitle: "View RESPONSE",
                callback: () async {
                  final response = await ref
                      .read(pHomeServiceProvider)
                      .getHomeWorkResponse(studentId, homework.id!);
                  AutoRouter.of(context)
                      .push(MyPdfViewerRoute(pdfUrl: response));
                  // ref.read(filePickerProvider.notifier).openFilePicker();
                },
                buttonWidth: 0.8.sw,
                borderRadius: 5,
                buttonHeight: 35.h),
          ),
          SizedBox(
            height: 5.h,
          )
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.r),
        border: Border.all(color: AppColor.appBlackColor),
        //color: AppColor.primaryColorDark.withOpacity(0.2)
      ),
    );
  }
}