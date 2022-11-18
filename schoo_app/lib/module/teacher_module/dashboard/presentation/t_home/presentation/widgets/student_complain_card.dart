import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/tstudent_complain.dart';

class StudentComplainCard extends StatelessWidget {
  const StudentComplainCard({Key? key, required this.complain})
      : super(key: key);
  final TStudentComplain complain;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      padding: EdgeInsets.all(10.sp),
      margin: EdgeInsets.all(4.sp),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          border: Border.all(color: AppColor.appBlue.withOpacity(0.4))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 5.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Session -",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: AppColor.primaryColor),
              ),
              SizedBox(
                width: 5.w,
              ),
              Expanded(
                child: Text(
                  complain.session ?? "",
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: AppColor.appBlackColor,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Class -",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: AppColor.primaryColor),
              ),
              SizedBox(
                width: 5.w,
              ),
              Expanded(
                child: Text(
                  complain.tStudentComplainClass ?? "",
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: AppColor.appBlackColor,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Student Name -",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: AppColor.primaryColor),
              ),
              SizedBox(
                width: 5.w,
              ),
              Expanded(
                child: Text(
                  complain.studentName ?? "",
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: AppColor.appBlackColor,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Complain By -",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: AppColor.primaryColor),
              ),
              SizedBox(
                width: 5.w,
              ),
              Expanded(
                child: Text(
                  complain.complaintBy ?? "",
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: AppColor.appBlackColor,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Complaint -",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: AppColor.primaryColor),
              ),
              SizedBox(
                width: 5.w,
              ),
              Expanded(
                child: Text(
                  complain.complaint ?? "",
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: AppColor.appBlackColor,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Complaint Date -",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: AppColor.primaryColor),
              ),
              SizedBox(
                width: 5.w,
              ),
              Expanded(
                child: Text(
                  complain.complainDate ?? "",
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: AppColor.appBlackColor,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Parent Response -",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: AppColor.primaryColor),
              ),
              SizedBox(
                width: 5.w,
              ),
              Expanded(
                child: Text(
                  complain.parentsResponse ?? "",
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: AppColor.appBlackColor,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          const Align()
        ],
      ),
    );
  }
}
