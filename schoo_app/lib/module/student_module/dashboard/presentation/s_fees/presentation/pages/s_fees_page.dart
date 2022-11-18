import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_button.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_snackbar.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_text_field.dart';
import 'package:schoo_app/core/presentation/images/app_images.dart';
import 'package:schoo_app/core/presentation/my_upi_pay/api.dart';
import 'package:schoo_app/core/presentation/my_upi_pay/discovery.dart';
import 'package:schoo_app/core/presentation/my_upi_pay/meta.dart';
import 'package:schoo_app/core/presentation/routes/app_routes.gr.dart';
import 'package:schoo_app/module/parent_module/p_fees/domain/fee_details.dart';
import 'package:schoo_app/module/parent_module/p_fees/domain/fee_submit_state.dart';
import 'package:schoo_app/module/parent_module/p_fees/domain/student_fees.dart';
import 'package:schoo_app/module/parent_module/p_fees/domain/upi_payment_state.dart';
import 'package:schoo_app/module/parent_module/p_fees/presentation/widget/upi_widget.dart';
import 'package:schoo_app/module/parent_module/p_fees/shared/provider.dart';

class SFeesPage extends HookConsumerWidget {
  const SFeesPage(
      {Key? key, required this.studentId, required this.nextDueDate})
      : super(key: key);
  final String studentId;
  final String nextDueDate;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _feeAmoutController = useTextEditingController();
    final _discountController = useTextEditingController();
    final _fineController = useTextEditingController();
    final _prvDueController = useTextEditingController();
    final _preAdvanceController = useTextEditingController();
    final _totalAmountController = useTextEditingController();
    final _depositDateController = useTextEditingController();
    final _nextDueDateController = useTextEditingController();
    final _feeMethodController = useTextEditingController();
    var tempList = ref.watch(feesTempListProvider);
    final _totalAmoutListener = useListenable(_totalAmountController);
    var _apps = useState<List<ApplicationMeta>>([]);
    final studentFees = useState<StudentFees?>(null);
    final totalAmpunt = useState<double>(0.0);

    double feesAmount = tempList.fold(0, (sum, item) => sum + item.feeamount);
    Future.delayed(const Duration(seconds: 1), () {
      _feeAmoutController.text = feesAmount.toString();

      _totalAmountController.text =
          " ${feesAmount + studentFees.value!.lastdue!.toDouble() + studentFees.value!.fines!.toDouble()}";
      /*  totalAmpunt.value =
          totalAmpunt.value + double.parse(feesAmount.toString());
      */
    });

    useEffect(() {
      Future.delayed(const Duration(seconds: 3), () async {
        _nextDueDateController.text = nextDueDate;
        _feeMethodController.text = "Online";
        _apps.value = await UpiPay.getInstalledUpiApplications(
            statusType: UpiApplicationDiscoveryAppStatusType.all);
        _discountController.text = "0";
        _preAdvanceController.text = "0";
      });
      return null;
    }, []);
    ref.watch(feeDetailsProvider).when(
        data: (data) {
          studentFees.value = data;
          _fineController.text = studentFees.value?.fines.toString() ?? "0";
          _prvDueController.text = studentFees.value?.lastdue.toString() ?? "0";
          _depositDateController.text =
              "${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}";
        },
        error: (e, s) {},
        loading: () {});

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
          ref.read(feeUpdateProvider.notifier).updateFees(
              context,
              tempList.map((e) => e.monthId).toList(),
              _depositDateController.text,
              "Failure",
              d.trsanctionId,
              _feeAmoutController.text,
              _discountController.text,
              "0",
              _totalAmountController.text,
              _nextDueDateController.text,
              studentId);
          //AppSnackBar.showInSnackBar("Failre", context);
        },
      );
    });

    ref.listen<FeeSubmitState>(feeUpdateProvider, (_, state) {
      state.maybeMap(
        orElse: () {},
        submitted: (s) {
          AutoRouter.of(context)
              .push(SuccessfullRoute(paymentStatus: s.status));
          // AppSnackBar.showInSnackBar("Submitted", context);
        },
        failure: (_) {
          AppSnackBar.showInSnackBar("Failure", context);
        },
      );
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Fees",
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(color: AppColor.appWhite),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 5.h,
            ),
            Container(
              padding: EdgeInsets.all(10.sp),
              decoration:
                  BoxDecoration(color: AppColor.primaryColor.withOpacity(0.3)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Select month for payment",
                    style: Theme.of(context)
                        .textTheme
                        .headline2!
                        .copyWith(color: AppColor.appBlackColor),
                  ),
                  Image.asset(
                    AppImages.sFeeReceipt,
                    height: 20.h,
                    width: 20.w,
                  ),
                ],
              ),
            ),
            ref.watch(feeDetailsProvider).when(data: (data) {
              return ListView.builder(
                  itemCount: data.monthname!.length,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: ((context, index) {
                    FeeDetails fee = FeeDetails(
                        monthId: data.monthid![index],
                        feeamount: data.monthamount![index]);
                    return InkWell(
                      onTap: () {
                        if (data.feestatus![index] == "Due") {
                          if (tempList.contains(fee)) {
                            ref.read(feesTempListProvider.notifier).remove(fee);
                          } else {
                            ref
                                .read(feesTempListProvider.notifier)
                                .addItem(fee);
                          }
                        }
                      },
                      child: Container(
                        padding: EdgeInsets.all(10.sp),
                        width: 150.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              data.feestatus![index] == "Paid"
                                  ? Icons.radio_button_checked
                                  : tempList.contains(fee)
                                      ? Icons.radio_button_checked
                                      : Icons.radio_button_unchecked,
                              color: data.feestatus![index] == "Paid"
                                  ? AppColor.secondaryColor
                                  : tempList.contains(fee)
                                      ? AppColor.secondaryColor
                                      : AppColor.dividerColor,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Expanded(
                              child: Text(
                                data.monthname![index],
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4!
                                    .copyWith(color: AppColor.appBlackColor),
                              ),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Text("₹ ${data.monthamount![index].toString()}",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4!
                                    .copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: AppColor.appBlackColor)),
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
                    );
                  }));
            }, error: (e, s) {
              return Text(e.toString());
            }, loading: () {
              return const Center(
                child: CircularProgressIndicator(
                  color: AppColor.secondaryColor,
                ),
              );
            }),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                children: [
                  AppTextField(
                      controller: _feeAmoutController,
                      hintText: "",
                      labelText: "Selected Fee Amount (₹)",
                      type: 2,
                      prefixIcon: null),
                  SizedBox(
                    height: 5.h,
                  ),
                  AppTextField(
                      controller: _discountController,
                      hintText: "0",
                      labelText: "Special Discount(%)",
                      type: 2,
                      prefixIcon: null),
                  SizedBox(
                    height: 5.h,
                  ),
                  AppTextField(
                      controller: _fineController,
                      hintText: "",
                      labelText: "Fine Amount(₹)",
                      type: 2,
                      prefixIcon: null),
                  SizedBox(
                    height: 5.h,
                  ),
                  AppTextField(
                      controller: _prvDueController,
                      hintText: "",
                      labelText: " Due Amount (₹)",
                      type: 2,
                      prefixIcon: null),
                  SizedBox(
                    height: 5.h,
                  ),
                  AppTextField(
                      controller: _preAdvanceController,
                      hintText: "",
                      labelText: "Prev Advance (₹)",
                      type: 2,
                      prefixIcon: null),
                  SizedBox(
                    height: 5.h,
                  ),
                  AppTextField(
                      controller: _totalAmountController,
                      hintText: "",
                      labelText: "Total Amount (₹)",
                      type: 2,
                      prefixIcon: null),
                  SizedBox(
                    height: 5.h,
                  ),
                  Visibility(
                    visible: false,
                    child: AppTextField(
                        controller: _depositDateController,
                        hintText: "",
                        labelText: "Fee Deposit Date",
                        type: 2,
                        prefixIcon: null),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Visibility(
                    visible: false,
                    child: AppTextField(
                        controller: _nextDueDateController,
                        hintText: "",
                        labelText: "Next Fee Date",
                        type: 2,
                        prefixIcon: null),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Visibility(
                    visible: false,
                    child: AppTextField(
                        controller: _feeMethodController,
                        hintText: "",
                        labelText: "Fee Deposit Method",
                        type: 2,
                        prefixIcon: null),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.all(5.sp),
                        child: AppButton(
                            bgColor: _totalAmoutListener.text.trim() == "0.0"
                                ? Colors.grey
                                : AppColor.secondaryColor,
                            buttonTitle: "Pay Now",
                            callback: () {
                              if (_totalAmountController.text.trim() == "0.0") {
                                AppSnackBar.showInSnackBar(
                                    "Please Selecte Month", context);
                                return;
                              }

                              showModalBottomSheet(
                                  context: context,
                                  builder: (context) => Container(
                                        child: Column(
                                          children: [
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  bottom: 12),
                                              child: Text(
                                                'Pay Using',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1,
                                              ),
                                            ),
                                            if (_apps.value.isNotEmpty)
                                              UpiApps(
                                                  apps: _apps.value,
                                                  amount: _totalAmountController
                                                      .text
                                                      .split(".")[0],
                                                  orderId:
                                                      "Shipra${DateTime.now().millisecond}")
                                            else
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  Text("No Upi App Found"),
                                                ],
                                              ),
                                          ],
                                        ),
                                      ));
                            },
                            buttonWidth: 251.w,
                            buttonHeight: 40.h),
                      )),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
