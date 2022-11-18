import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';
import 'package:schoo_app/module/student_module/dashboard/presentation/s_home/presentation/application_form/presentation/widget/form_row.dart';
import 'package:schoo_app/module/student_module/dashboard/presentation/s_home/shared/provider.dart';

class FeesPage extends HookConsumerWidget {
  const FeesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Fees Receipt",
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
              height: 10.h,
            ),
            Text(
              "Your Fees Receipt",
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(color: AppColor.primaryColor),
            ),
            SizedBox(
              height: 5.h,
            ),
            ref.watch(feesHistoryProvider).when(data: (data) {
              return Container(
                padding: EdgeInsets.all(5.sp),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: AppColor.appBlackColor.withOpacity(0.4))),
                margin: EdgeInsets.all(10.sp),
                child: ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    separatorBuilder: ((context, index) => Divider(
                          color: AppColor.appBlackColor.withOpacity(0.4),
                        )),
                    itemCount: data.length,
                    itemBuilder: (context, index) => Container(
                          child: Column(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              FormRow(
                                  title: "Fee Type",
                                  value: data[index].feetype.toString()),
                              FormRow(
                                  title: "Month",
                                  value: data[index].month.toString()),
                              FormRow(
                                  title: "Total Fee",
                                  value: data[index].amount.toString()),
                              FormRow(
                                  title: "Date",
                                  value: data[index].date.toString()),
                              FormRow(
                                  title: "Payment Mode",
                                  value: data[index].mode.toString()),
                              FormRow(
                                  title: "Pay Amount",
                                  value: data[index].payamount.toString()),
                              FormRow(
                                  title: "Due Amount",
                                  value: (data[index].amount -
                                          data[index].payamount!)
                                      .toString()),
                            ],
                          ),
                        )),
              );
            }, error: (e, s) {
              return const Center(child: Text("No Data Found"));
            }, loading: () {
              return const Center(
                  child:
                      CircularProgressIndicator(color: AppColor.primaryColor));
            }),
          ],
        ),
      ),
    );
  }
}
