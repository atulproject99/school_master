import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_circular_image.dart';
import 'package:schoo_app/core/presentation/images/app_images.dart';
import 'package:schoo_app/core/presentation/routes/app_routes.gr.dart';
import 'package:schoo_app/core/presentation/url/app_url.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_home/domain/pstudent.dart';

class StudentCard extends StatelessWidget {
  StudentCard({Key? key, required this.student}) : super(key: key);
  PStudent student;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {
        AutoRouter.of(context).push(StudentDetailsRoute(student: student));
      }),
      child: Card(
        elevation: 1,
        child: Container(
          height: 70.h,
          width: 1.sw,
          child: Row(children: [
            SizedBox(
              width: 10.w,
            ),
            UserCircularImage(
              assetsUrl: AppImages.user_pic,
              height: 40.h,
              networkUrl: AppUrl.imageUrl + student.image!,
              width: 40.w,
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  student.student,
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(fontSize: 16.sp),
                ),
                Text(
                  "class - ${student.pStudentClass}",
                  style: Theme.of(context).textTheme.headline4!.copyWith(),
                ),
              ],
            ))
          ]),
          margin: EdgeInsets.all(2.sp),
        ),
      ),
    ); /* Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.r)),
      color: AppColor.primaryColor,
      child: Container(
        height: 200.h,
        width: 1.sw,
        margin: EdgeInsets.all(5.sp),
        child: Column(
          children: [
            SizedBox(
              height: 5.h,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "SESSION (${student.session})",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: AppColor.appWhite),
              ),
            ),
            SizedBox(
              height: 100.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 5.w,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Class ${student.pStudentClass}",
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(color: AppColor.appWhite),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          student.student,
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(color: AppColor.appWhite),
                        ),
                      ],
                    ),
                  ),
                  UserCircularImage(
                    height: 60.h,
                    width: 60.w,
                  )
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        " Tutiondueamount - ${student.tutiondueamount ?? 0}",
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                            color: AppColor.appWhite,
                            fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Text(
                        " Transportdueamount - ${student.transportdueamount ?? 0}",
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                            color: AppColor.appWhite,
                            fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Text(
                        " Nextfeedate - ${student.nextfeedate}",
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                            color: AppColor.appWhite,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          AutoRouter.of(context).push(PFeesRoute(
                              studentId: student.studentid.toString(),
                              nextDueDate: student.nextfeedate.toString()));
                        },
                        child: Card(
                          child: SizedBox(
                            height: 60.h,
                            width: 60.w,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(Icons.ballot),
                                Text('fees')
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          AutoRouter.of(context).push(PComplainRoute(
                              studentId: student.studentid.toString()));
                        },
                        child: Card(
                          child: SizedBox(
                            height: 60.h,
                            width: 60.w,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(Icons.attribution),
                                Text('Complain')
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.r)),
      ),
    ); */
  }
}
