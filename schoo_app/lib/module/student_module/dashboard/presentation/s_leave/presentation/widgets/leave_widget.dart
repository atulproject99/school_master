import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';

class LeaveWidget extends StatelessWidget {
  const LeaveWidget(
      {Key? key,
      required this.fromDate,
      required this.toDate,
      required this.reason,
      required this.status})
      : super(key: key);
  final String fromDate;
  final String toDate;
  final String reason;
  final int status;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(5.sp),
        child: Card(
          elevation: 1,
          child: Container(
            padding: EdgeInsets.all(5.sp),
            width: 1.sw,
            child: Column(
              children: [
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Expanded(child: Container()),
                    Expanded(
                      flex: 4,
                      child: Text(
                        "From Date",
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 13.sp),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Text(
                        ":  $fromDate ",
                        style: Theme.of(context).textTheme.headline3!.copyWith(
                            color: AppColor.appBlackColor.withOpacity(0.6)),
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
                    //  Expanded(child: Container()),
                    Expanded(
                      flex: 4,
                      child: Text(
                        "To Date",
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 13.sp),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Text(
                        ":  $toDate",
                        style: Theme.of(context).textTheme.headline3!.copyWith(
                            color: AppColor.appBlackColor.withOpacity(0.6)),
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
                    //  Expanded(child: Container()),
                    Expanded(
                      flex: 4,
                      child: Text(
                        "Status",
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 13.sp),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Text(
                        ":  ${status == 0 ? "Pending" : "Approved"}",
                        style: Theme.of(context).textTheme.headline3!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: status == 0
                                ? Colors.orange.shade900
                                : Colors.green),
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
                    //  Expanded(child: Container()),
                    Expanded(
                      flex: 4,
                      child: Text(
                        "Reason",
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 13.sp),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Text(
                        ": $reason ",
                        style: Theme.of(context).textTheme.headline3!.copyWith(
                            color: AppColor.appBlackColor.withOpacity(0.6)),
                      ),
                    )
                  ],
                ),
              ],
            ),
            // color: AppColor.appBlue,
            //decoration: B,
          ),
        ));
  }
}
