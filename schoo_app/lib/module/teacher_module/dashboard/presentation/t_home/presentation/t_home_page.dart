import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/authentication/domain/user.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_snackbar.dart';
import 'package:schoo_app/core/presentation/images/app_images.dart';
import 'package:schoo_app/core/presentation/routes/app_routes.gr.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_profile/shared/provider.dart';

class TeacherHomePage extends HookConsumerWidget {
  TeacherHomePage({Key? key}) : super(key: key);
  var list = [
    //d "Profile",
    "Staff Complains",
    "Staff Attendance",
    "Students",
    "Student Complain",
    "Add Homework",
    "Add Study Material",
    "Mark Student Attendance",
    "Academic Calender",
  ];

  var colorList = [
    AppColor.skyBlueColor,
    AppColor.violetColor,
    AppColor.yellowColor,
    AppColor.lightRedColor,
    AppColor.lightGreenColor,
    AppColor.lightBlueColor,
    AppColor.skyBlueColor,
    AppColor.appRed.withAlpha(180)
  ];
  var imageList = [
    // AppImages.sProfile,
    AppImages.tComplain,
    AppImages.sAttendance,
    AppImages.tStudents,
    AppImages.complain,
    AppImages.sHomework,
    AppImages.sStudyMaterial,
    AppImages.sProfile,
    AppImages.sCalendar
  ];
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = useState<User?>(null);

    ref.watch(parentDetailsProvider).when(
        data: (data) {
          user.value = data;
        },
        error: (e, s) {
          AppSnackBar.showInSnackBar(e.toString(), context);
        },
        loading: () {});

    return Scaffold(
      //  backgroundColor: AppColor.dividerColor.withOpacity(0.1),
      backgroundColor: AppColor.appWhite,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              width: 1.sw,
              height: 100.h,
              padding: EdgeInsets.all(10.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello",
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(color: AppColor.appWhite),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    user.value?.name ?? "",
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                        color: AppColor.appWhite, fontWeight: FontWeight.w800),
                  ),
                  Text(
                    user.value?.role ?? "",
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: AppColor.appWhite, fontWeight: FontWeight.w200),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  color: AppColor.primaryColor,
                  image: const DecorationImage(
                      opacity: 0.45,
                      fit: BoxFit.fill,
                      image: AssetImage(AppImages.texture)),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.r),
                      bottomRight: Radius.circular(20.r))),
            ),
          ),
          Positioned(
            top: 65.h,
            left: 0,
            right: 10,
            child: SizedBox(
              height: 1.sh,
              width: 1.sw,
              child: Padding(
                padding: EdgeInsets.only(left: 10.w, right: 10.w),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      /* ListView.builder(
                        shrinkWrap: true,
                        itemCount: 2,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => Card(
                          elevation: 0,
                          child: Container(
                            height: 70.h,
                            width: 1.sw,
                            child: Row(children: [
                              UserCircularImage(
                                assetsUrl: AppImages.sNoticeBoard,
                                height: 60.h,
                                width: 60.w,
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
                                    "what next",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline2!
                                        .copyWith(
                                            fontSize: 13.sp,
                                            color: AppColor.dividerColor),
                                  ),
                                  Text(
                                    "Geometric weekly test",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline2!
                                        .copyWith(),
                                  ),
                                  Text(
                                    " 2 days to go ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline2!
                                        .copyWith(
                                            fontSize: 13.sp,
                                            color: AppColor.dividerColor),
                                  ),
                                ],
                              ))
                            ]),
                            margin: EdgeInsets.all(2.sp),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ), */
                      MasonryGridView.count(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          crossAxisSpacing: 10,
                          itemCount: list.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                if (list[index] == "Staff Attendance") {
                                  AutoRouter.of(context)
                                      .push(const TeacherAttendanceRoute());
                                } else if (list[index] == "Staff Complains") {
                                  AutoRouter.of(context)
                                      .push(const TeacherComplainListRoute());
                                } else if (list[index] == "Student Complain") {
                                  AutoRouter.of(context)
                                      .push(ClassListRoute(type: 2));
                                } else if (list[index] == "Students") {
                                  AutoRouter.of(context)
                                      .push(ClassListRoute(type: 1));
                                } else if (list[index] == "Add Homework") {
                                  AutoRouter.of(context)
                                      .push(ClassListRoute(type: 3));
                                } else if (list[index] ==
                                    "Add Study Material") {
                                  AutoRouter.of(context)
                                      .push(ClassListRoute(type: 4));
                                } else if (list[index] ==
                                    "Mark Student Attendance") {
                                  AutoRouter.of(context)
                                      .push(ClassListRoute(type: 5));
                                } else if (list[index] == "Academic Calender") {
                                  AutoRouter.of(context)
                                      .push(ShowEventsRoute());
                                }
                              },
                              child: Column(
                                children: [
                                  Card(
                                    elevation: 1,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.r),
                                    ),
                                    child: Container(
                                      height: 90.h,
                                      width: 1.sw,
                                      alignment: Alignment.center,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            imageList[index],
                                            width: 50.w,
                                            height: 50.h,
                                          ),
                                          SizedBox(
                                            height: 5.sp,
                                          ),
                                          Text(
                                            list[index],
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline3!
                                                .copyWith(
                                                    color: AppColor.appWhite),
                                          ),
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                        color: colorList[index],
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                        //color: AppColor.secondaryColor,

                                        /*    border: Border.all(
                                              color: AppColor.appBlackColor
                                                  .withOpacity(0.4),
                                            ) */
                                        // shape: BoxShape.circle
                                        //
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                ],
                              ),
                            );
                          }),
                      SizedBox(height: 100.h)
                    ],
                  ),
                ),
              ),
            ),
          ),
          /*   Image.asset(
            AppImages.dash_pic,
            fit: BoxFit.fill,
            height: 300.h,
          ) */
        ],
      ),
    ); /* Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 10.h,
        ),
        Expanded(
          child: MasonryGridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 2,
              itemCount: list.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    if (list[index] == "Attendance") {
                      AutoRouter.of(context)
                          .push(const TeacherAttendanceRoute());
                    } else if (list[index] == "Complains") {
                      AutoRouter.of(context)
                          .push(const TeacherComplainListRoute());
                    } else if (list[index] == "Student Complain") {
                      AutoRouter.of(context).push(const StudentComplainRoute());
                    } else if (list[index] == "Students") {
                      AutoRouter.of(context).push(const TStudentsRoute());
                    } else if (list[index] == "Add Homework") {
                      AutoRouter.of(context).push(const THomeworkRoute());
                    } else if (list[index] == "Add Study Material") {
                      AutoRouter.of(context).push(const TStudyMaterialRoute());
                    }
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 80.h,
                        width: 80.w,
                        alignment: Alignment.center,
                        child: Image.asset(
                          imageList[index],
                          width: 50.w,
                          height: 50.h,
                        ),
                        decoration: BoxDecoration(
                            //color: AppColor.secondaryColor,
                            borderRadius: BorderRadius.circular(5.r),
                            border: Border.all(
                              color: AppColor.appBlackColor.withOpacity(0.4),
                            )
                            // shape: BoxShape.circle
                            //
                            ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        list[index],
                        style:
                            Theme.of(context).textTheme.headline3!.copyWith(),
                      ),
                    ],
                  ),
                );
              }),
        ),
        Image.asset(
          AppImages.dash_pic,
          fit: BoxFit.fill,
          height: 300.h,
        )
      ],
    )); */
  }
}
