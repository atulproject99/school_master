import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_button.dart';
import 'package:schoo_app/core/presentation/routes/app_routes.gr.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/t_student.dart';

class TStudentCard extends StatelessWidget {
  TStudentCard({
    Key? key,
    required this.student,
    required this.session,
    required this.classId,
  }) : super(key: key);
  TStudent student;
  final String session;
  final String classId;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      padding: EdgeInsets.all(10.sp),
      margin: EdgeInsets.all(4.sp),
      decoration: BoxDecoration(
          color: AppColor.appWhite,
          borderRadius: BorderRadius.circular(5.r),
          border: Border.all(color: AppColor.appBlue.withOpacity(0.4))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 5.h,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "CLASS (${student.tStudentClass})",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: AppColor.appBlackColor),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            "STUDENT NAME:- ${student.studentname}",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(color: AppColor.appBlackColor),
          ),
          Text(
            "SECTION:- ${student.section}",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(color: AppColor.appBlackColor),
          ),
          Text(
            "STREAM:- ${student.stream}",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(color: AppColor.appBlackColor),
          ),
          Text(
            "FATHER_NAME:- ${student.fathername}",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(color: AppColor.appBlackColor),
          ),
          Text(
            "MOBILE NO:- ${student.mobileNo}",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(color: AppColor.appBlackColor),
          ),
          SizedBox(
            height: 5.h,
          ),
          Align(
            alignment: Alignment.center,
            child: AppButton(
                buttonTitle: "Add Complain",
                callback: () {
                  AutoRouter.of(context).push(AddComplainRoute(
                      session: session,
                      classId: classId,
                      studentId: student.id.toString(),
                      studentName: student.studentname!,
                      className: student.tStudentClass!));
                },
                buttonWidth: 0.6.sw,
                buttonHeight: 25.h),
          )
        ],
      ),
    );
  }
}
