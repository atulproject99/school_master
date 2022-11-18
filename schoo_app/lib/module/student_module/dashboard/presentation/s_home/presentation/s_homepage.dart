import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/authentication/domain/user.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_button.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_circular_image.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_snackbar.dart';
import 'package:schoo_app/core/presentation/images/app_images.dart';
import 'package:schoo_app/core/presentation/my_upi_pay/api.dart';
import 'package:schoo_app/core/presentation/my_upi_pay/discovery.dart';
import 'package:schoo_app/core/presentation/my_upi_pay/meta.dart';
import 'package:schoo_app/core/presentation/routes/app_routes.gr.dart';
import 'package:schoo_app/core/shared/provider.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_profile/shared/provider.dart';
import 'package:schoo_app/module/parent_module/p_fees/domain/due_oayment_state.dart';
import 'package:schoo_app/module/parent_module/p_fees/domain/student_fees.dart';
import 'package:schoo_app/module/parent_module/p_fees/domain/upi_payment_state.dart';
import 'package:schoo_app/module/parent_module/p_fees/shared/provider.dart';
import 'package:schoo_app/module/student_module/dashboard/presentation/s_home/shared/provider.dart';

import '../../s_fees/presentation/widget/upi_widget.dart';

class StudentHomePage extends HookConsumerWidget {
  StudentHomePage({Key? key}) : super(key: key);
  var list = [
    //d "Profile",
    "Home Work",
    "Study Material",
    // "Exam",
    "My Attendance",
    //  "Message",
    "Noticeboard",
    "Pay Fee",
    "Appliction Form",
    "Fee Reciept",
    "My Due Amount",
    "My Leave",
    "Syllabus", "My Complain",
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
    AppColor.appRed.withAlpha(180),
    AppColor.skyBlueColor,
    AppColor.lightGreenColor,
    AppColor.lightBlueColor,
    AppColor.lightBlueColor,
  ];
  var imageList = [
    // AppImages.sProfile,
    AppImages.sHomework,
    AppImages.sStudyMaterial,
    AppImages.sAttendance,
    AppImages.sNoticeBoard,
    AppImages.sFeeReceipt,
    AppImages.sApplication,
    AppImages.sFeeReceipt,
    AppImages.dueAmount,
    AppImages.userProfile,
    AppImages.sApplication,
    AppImages.complain,
    AppImages.sCalendar,
  ];
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = useState<User?>(null);
    var _apps = <ApplicationMeta>[];
    var syllabusUrl = useState<String>("");
    ref.watch(parentDetailsProvider).when(
        data: (data) async {
          user.value = data;
        },
        error: (e, s) {
          AppSnackBar.showInSnackBar(e.toString(), context);
        },
        loading: () {});

    ref.watch(getSyllabusProvider).when(
        data: (data) async {
          syllabusUrl.value = data;
        },
        error: (e, s) {
          AppSnackBar.showInSnackBar(e.toString(), context);
        },
        loading: () {});
    useEffect(() {
      Future.delayed(const Duration(seconds: 3), () async {
        _apps = await UpiPay.getInstalledUpiApplications(
            statusType: UpiApplicationDiscoveryAppStatusType.all);
      });
      return null;
    }, []);
    /*  ref.listen<TokenState>(update TokenProvider, (_, state) {
      state.maybeMap(
          orElse: () {},
          success: (_) {
            print("updated");
          },
          failed: (_) {
            print("failed");
          });
    }); */
    final studentFees = useState<StudentFees?>(null);
    ref.watch(feeDetailsProvider).when(
        data: (data) {
          log("data  $data");
          Future.delayed(Duration.zero);
          studentFees.value = data;
        },
        error: (e, s) {},
        loading: () {});
    ref.listen<DuePaymentState>(dueAmountProvider, (_, state) {
      state.maybeMap(
        orElse: () {},
        success: (s) {
          AutoRouter.of(context)
              .push(SuccessfullRoute(paymentStatus: "success"));
          // AppSnackBar.showInSnackBar("Submitted", context);
        },
        failure: (_) {
          AppSnackBar.showInSnackBar("Failure", context);
        },
      );
    });

    ref.listen<UpiPaymentState>(upiPaymentProvider, (_, state) {
      state.maybeMap(
        orElse: () {},
        success: (d) {
          Navigator.of(context).pop();
          AppSnackBar.showInSnackBar("Success", context);
        },
        cancel: (d) {
          Navigator.of(context).pop();
          AppSnackBar.showInSnackBar("Cancel", context);
        },
        failure: (d) {
          Navigator.of(context).pop();
          ref.read(dueAmountProvider.notifier).payDueAmount(
                studentFees.value!.lastdue.toString(),
                "${DateTime.now().year} -${DateTime.now().month}-${DateTime.now().day}",
                context,
              );
          //AppSnackBar.showInSnackBar("Failre", context);
        },
      );
    });
    useEffect(() {
      Future.delayed(const Duration(seconds: 3), () async {
        _apps = await UpiPay.getInstalledUpiApplications(
            statusType: UpiApplicationDiscoveryAppStatusType.all);
      });
      return null;
    }, []);
    return Scaffold(
      backgroundColor: AppColor.appWhite.withOpacity(0.5),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              width: 1.sw,
              height: 100.h,
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
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
                          style: Theme.of(context)
                              .textTheme
                              .headline2!
                              .copyWith(
                                  color: AppColor.appWhite,
                                  fontWeight: FontWeight.w800),
                        ),
                        Text(
                          user.value?.role ?? "",
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(
                                  color: AppColor.appWhite,
                                  fontWeight: FontWeight.w200),
                        ),
                      ],
                    ),
                  ),
                  UserCircularImage(
                    assetsUrl: AppImages.user_pic,
                    height: 60.h,
                    width: 60.w,
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
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.w),
                      child: SizedBox(
                        height: 0.7.sh,
                        child: MasonryGridView.count(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            //  shrinkWrap: true,
                            // physics: const NeverScrollableScrollPhysics(),
                            crossAxisSpacing: 10,
                            itemCount: list.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  if (list[index] == "My Attendance") {
                                    AutoRouter.of(context)
                                        .push(StudentAttendanceRoute());
                                  } else if (list[index] == "Home Work") {
                                    AutoRouter.of(context)
                                        .push(const HomeworkListRoute());
                                  } else if (list[index] == "Noticeboard") {
                                    AutoRouter.of(context)
                                        .push(StudentNoticeboardRoute());
                                  } else if (list[index] == "Pay Fee") {
                                    if (user.value != null) {
                                      AutoRouter.of(context).push(SFeesRoute(
                                          studentId: user.value!.id.toString(),
                                          nextDueDate: "23"));
                                    }
                                  } else if (list[index] == "Appliction Form") {
                                    AutoRouter.of(context).push(
                                        const StudentApplicationFormRoute());
                                  } else if (list[index] == "Study Material") {
                                    AutoRouter.of(context)
                                        .push(const StudyMaterialRoute());
                                  } else if (list[index] ==
                                      "Academic Calender") {
                                    AutoRouter.of(context)
                                        .push(ShowEventsRoute());
                                  } else if (list[index] == "My Complain") {
                                    AutoRouter.of(context)
                                        .push(const SComplainRoute());
                                  } else if (list[index] == "Fee Reciept") {
                                    AutoRouter.of(context)
                                        .push(const FeesRoute());
                                  } else if (list[index] == "Logout") {
                                    ref.read(localStorageProvider).removeData();

                                    AutoRouter.of(context).pushAndPopUntil(
                                        const LoginRoute(),
                                        predicate: (route) => false);
                                  } else if (list[index] == "My Leave") {
                                    AutoRouter.of(context)
                                        .push(const LeaveListRoute());
                                  } else if (list[index] == "Syllabus") {
                                    // if (syllabusUrl.value.isNotEmpty) {
                                    AutoRouter.of(context).push(
                                        MyPdfViewerRoute(
                                            pdfUrl: syllabusUrl.value,
                                            title: "Syllabus"));
                                    // }

                                    /*  else {
                                      AppSnackBar.showInSnackBar(
                                        */ //"No Syllabus", context);
                                    // }
                                  } else if (list[index] == "My Due Amount") {
                                    if (studentFees.value?.lastdue.toString() ==
                                        "0") {
                                      AppSnackBar.showInSnackBar(
                                          "No Due Amount", context);
                                      return;
                                    } else {
                                      showDialog(
                                          context: context,
                                          builder: (context) => Dialog(
                                                child: Container(
                                                  height: 100.h,
                                                  width: 1.sw,
                                                  padding:
                                                      EdgeInsets.all(10.sp),
                                                  child: Column(children: [
                                                    SizedBox(
                                                      height: 10.h,
                                                    ),
                                                    Text(
                                                      "Your Due Amount : ₹ ${studentFees.value?.lastdue.toString()}",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .headline2!
                                                          .copyWith(
                                                              color: AppColor
                                                                  .appBlackColor,
                                                              fontSize: 16.sp),
                                                    ),
                                                    SizedBox(
                                                      height: 10.h,
                                                    ),
                                                    AppButton(
                                                        buttonTitle: "Pay Now ",
                                                        callback: () {
                                                          if (studentFees.value
                                                                  ?.lastdue
                                                                  .toString() !=
                                                              "0") {
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                            showPaymentOption(
                                                                studentFees
                                                                    .value
                                                                    ?.lastdue
                                                                    .toString(),
                                                                context,
                                                                _apps);
                                                          } else {
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                            AppSnackBar
                                                                .showInSnackBar(
                                                                    "You have no last due.",
                                                                    context);
                                                          }
                                                        },
                                                        buttonWidth: 0.8.sw,
                                                        buttonHeight: 40.h)
                                                  ]),
                                                  decoration:
                                                      const BoxDecoration(
                                                          color: AppColor
                                                              .appWhite),
                                                ),
                                              ));
                                    }
                                  }
                                },
                                child: Column(
                                  children: [
                                    Card(
                                      elevation: 1,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.r),
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
                      ),
                    ),
                    SizedBox(height: 100.h)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> showPaymentOption(
    String? amount,
    BuildContext context,
    List<ApplicationMeta> apps,
  ) async {
    showModalBottomSheet(
        context: context,
        builder: (context) => Container(
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    child: Text(
                      'Pay Using',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  if (apps.isNotEmpty)
                    UpiApps(
                        apps: apps,
                        amount: amount!,
                        orderId: "Shipra${DateTime.now().millisecond}")
                  else
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("No Upi App Found"),
                      ],
                    ),
                ],
              ),
            ));
  }
}
