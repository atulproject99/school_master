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
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_home/domain/pstudent.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_profile/shared/provider.dart';
import 'package:schoo_app/module/parent_module/p_fees/domain/due_oayment_state.dart';
import 'package:schoo_app/module/parent_module/p_fees/domain/student_fees.dart';
import 'package:schoo_app/module/parent_module/p_fees/domain/upi_payment_state.dart';
import 'package:schoo_app/module/parent_module/p_fees/shared/provider.dart';
import 'package:schoo_app/module/student_module/dashboard/presentation/s_home/shared/provider.dart';

import '../../../../../../p_fees/presentation/widget/upi_widget.dart';

class StudentDetailsPage extends HookConsumerWidget {
  StudentDetailsPage({Key? key, required this.student}) : super(key: key);

  final PStudent student;
  var list = [
    //d "Profile",

    "Pay Fee",
    "Tution Due Amount",
    "Transport amount",
    // "Due Amount",
    "Complain",
    "Homework",
    "Notice"
    // "Logout",
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
    AppImages.sHomework,
    AppImages.dueAmount,
    AppImages.sFeeReceipt,
    AppImages.complain,
    AppImages.sHomework,
    AppImages.sNoticeBoard,

    AppImages.dueAmount
    //  AppImages.logout,
  ];
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = useState<User?>(null);
    var _apps = useState<List<ApplicationMeta>>([]);
    ref.watch(parentDetailsProvider).when(
        data: (data) {
          user.value = data;
        },
        error: (e, s) {
          AppSnackBar.showInSnackBar(e.toString(), context);
        },
        loading: () {});

    ref.watch(getTokenProvider).when(
          data: (data) {
            ref.read(updateTokenProvider.notifier).updateToken(data.toString());
          },
          error: (e, s) {},
          loading: () {},
        );
    /*  ref.listen<TokenState>(updateTokenProvider, (_, state) {
      state.maybeMap(
          orElse: () {},
          success: (_) {
            print("updated");
          },
          failed: (_) {
            print("failed");
          });
    }); */
    useEffect(() {
      Future.delayed(const Duration(seconds: 3), () async {
        log("app list call");
        log("app list ${_apps.value}");
        _apps.value = await UpiPay.getInstalledUpiApplications(
            statusType: UpiApplicationDiscoveryAppStatusType.all);
        log("app list ${_apps.value}");
      });
      return null;
    }, []);
    final studentFees = useState<StudentFees?>(null);
    ref.watch(feeDetailsProvider).when(
        data: (data) {
          studentFees.value = data;
        },
        error: (e, s) {},
        loading: () {});
    ref.listen<DuePaymentState>(tutionDueAmountProvider, (_, state) {
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
          ref.read(tutionDueAmountProvider.notifier).payTutionDueAmount(
                student.tutiondueamount.toString(),
                "${DateTime.now().year} -${DateTime.now().month}-${DateTime.now().day}",
                student.studentid.toString(),
                context,
              );
          //AppSnackBar.showInSnackBar("Failre", context);
        },
      );
    });

    return Scaffold(
      // backgroundColor: AppColor.dividerColor.withOpacity(1),
      // appBar: AppBar(),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              child: Container(
                width: 1.sw,
                height: 140.h,
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 40.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            student.student,
                            style: Theme.of(context)
                                .textTheme
                                .headline2!
                                .copyWith(
                                    color: AppColor.appWhite,
                                    fontWeight: FontWeight.w800),
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
              top: 100.h,
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
                        Padding(
                          padding: EdgeInsets.only(left: 10.w),
                          child: MasonryGridView.count(
                              crossAxisCount: 2,
                              mainAxisSpacing: 10,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              crossAxisSpacing: 10,
                              itemCount: list.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    if (list[index] == "Pay Fee") {
                                      AutoRouter.of(context).push(PFeesRoute(
                                          studentId:
                                              student.studentid.toString(),
                                          nextDueDate:
                                              student.nextfeedate.toString()));
                                    } else if (list[index] == "Complain") {
                                      AutoRouter.of(context).push(
                                          PComplainRoute(
                                              studentId: student.studentid
                                                  .toString()));
                                    } else if (list[index] == "Notice") {
                                      AutoRouter.of(context).push(NoticeRoute(
                                          studentId: student.studentid!));
                                    } else if (list[index] == "Homework") {
                                      AutoRouter.of(context).push(
                                          PHomeworkListRoute(
                                              studentId: student.studentid!));
                                    } else if (list[index] ==
                                        "Tution Due Amount") {
                                      showFeePopup(
                                          context,
                                          student.tutiondueamount.toString(),
                                          1,
                                          _apps);
                                    } else if (list[index] ==
                                        "Transport amount") {
                                      AutoRouter.of(context).push(
                                          PTransportAmountRoute(
                                              studentId:
                                                  student.studentid.toString(),
                                              nextDueDate: ""));
                                      /*   showFeePopup(
                                          context,
                                          student.transportdueamount
                                                  ?.toString() ??
                                              "0",
                                          2); */
                                    } else if (list[index] ==
                                        "Appliction Form") {
                                      AutoRouter.of(context).push(
                                          const StudentApplicationFormRoute());
                                    } else if (list[index] ==
                                        "Study Material") {
                                      AutoRouter.of(context)
                                          .push(const StudyMaterialRoute());
                                    } else if (list[index] == "Fee Reciept") {
                                      AutoRouter.of(context)
                                          .push(const FeesRoute());
                                    } else if (list[index] == "Logout") {
                                      ref
                                          .read(localStorageProvider)
                                          .removeData();

                                      AutoRouter.of(context).pushAndPopUntil(
                                          const LoginRoute(),
                                          predicate: (route) => false);
                                    } else if (list[index] == "Due Amount") {
                                      if (studentFees.value?.lastdue
                                              .toString() !=
                                          "0") {
                                        return;
                                      } else {}
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
                                                        color:
                                                            AppColor.appWhite),
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
                        SizedBox(height: 100.h)
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
                top: 15.h,
                left: 10.w,
                child: GestureDetector(
                  onTap: (() {
                    Navigator.of(context).pop();
                  }),
                  child: const Icon(
                    Icons.arrow_back,
                    color: AppColor.appWhite,
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Future<void> showFeePopup(BuildContext context, String amount, int type,
      ValueNotifier<List<ApplicationMeta>> apps) async {
    showDialog(
        context: context,
        builder: (context) => Dialog(
              child: Container(
                height: 100.h,
                width: 1.sw,
                padding: EdgeInsets.all(10.sp),
                child: Column(children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    type == 1
                        ? "  Tution Due Amount : ₹ $amount"
                        : "  Transport Amount : ₹ $amount",
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                        color: AppColor.appBlackColor, fontSize: 16.sp),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  AppButton(
                      buttonTitle: "Pay Now ",
                      callback: () {
                        Navigator.of(context).pop();
                        if (amount.toString() != "0") {
                          showPaymentOption(amount.toString(), context, apps);
                        } else {
                          Navigator.of(context).pop();
                          AppSnackBar.showInSnackBar(
                              "You have no tution  due.", context);
                        }
                      },
                      buttonWidth: 0.8.sw,
                      buttonHeight: 40.h)
                ]),
                decoration: const BoxDecoration(color: AppColor.appWhite),
              ),
            ));
  }

  Future<void> showPaymentOption(
    String? amount,
    BuildContext context,
    ValueNotifier<List<ApplicationMeta>> apps,
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
                  if (apps.value.isNotEmpty)
                    UpiApps(
                        apps: apps.value,
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
