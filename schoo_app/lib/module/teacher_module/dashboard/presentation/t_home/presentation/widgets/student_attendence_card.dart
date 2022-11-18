/* import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/attendence_student.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/shared/provider.dart';

class StudentAttendenceCard extends HookConsumerWidget {
  StudentAttendenceCard({Key? key, required this.student}) : super(key: key);
  AttendanceStudent student;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    
    return InkWell(
      onTap: () {
        if (tempList.contains(student)) {
          ref.read(tempAttendenceProvider.notifier).remove(student);
        } else {
          ref.read(tempAttendenceProvider.notifier).addItem(student);
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
                  color: student.attendanceStatus != "Absent"
                      ? AppColor.primaryColor
                      : tempList.contains(student)
                          ? AppColor.primaryColor
                          : AppColor.lightRedColor),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: Text(
                  student.studentname!,
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: AppColor.appBlackColor),
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
  }
}
 */