import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';
import 'package:schoo_app/module/parent_module/p_complain/domain/complain.dart';
import 'package:schoo_app/module/parent_module/p_complain/presentation/widget/response_form.dart';

class ComplainCard extends StatelessWidget {
  ComplainCard({Key? key, required this.complain, this.type = 1})
      : super(key: key);
  Complain complain;
  int type;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      margin: EdgeInsets.all(5.sp),
      child: Padding(
        padding: EdgeInsets.all(10.sp),
        child: Column(
          children: [
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
                    complain.complaintby ?? "",
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
                  "Complain -",
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
            Visibility(
              visible: complain.parentsresponse != null ? true : false,
              child: SizedBox(
                height: 5.h,
              ),
            ),
            Visibility(
              visible: complain.parentsresponse != null ? true : false,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Response -",
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
                      complain.parentsresponse ?? "",
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(color: AppColor.appBlackColor),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              children: [
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Date-",
                        style: Theme.of(context)
                            .textTheme
                            .headline4!
                            .copyWith(color: AppColor.primaryColor),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        complain.complaintdate,
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(color: AppColor.appBlackColor),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: type == 2
                      ? false
                      : complain.parentsresponse != null
                          ? false
                          : true,
                  child: InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          builder: (context) => ResponseForm(
                                complainId: complain.complaintid,
                              ));
                    },
                    child: Card(
                      color: AppColor.secondaryColor,
                      child: Padding(
                        padding: EdgeInsets.all(10.sp),
                        child: Text("Response",
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(color: AppColor.appWhite)),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          border: Border.all(color: AppColor.dividerColor.withOpacity(0.7)),
          color: AppColor.appWhite.withOpacity(0.3)),
    );
  }
}
