import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/teacher_complain.dart';

class TComplainCard extends StatelessWidget {
  TComplainCard({Key? key, required this.complain}) : super(key: key);
  TeacherComplain complain;
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
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: AppColor.primaryColor,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Expanded(
                  child: Text(
                    complain.complintsby ?? "",
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
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: AppColor.primaryColor,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Expanded(
                  child: Text(
                    complain.complaints ?? "",
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: AppColor.appBlackColor,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            Visibility(
              visible: complain.staffresponse != null ? true : false,
              child: SizedBox(
                height: 5.h,
              ),
            ),
            Visibility(
              visible: true,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Response -",
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: AppColor.primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Expanded(
                    child: Text(
                      complain.staffresponse ?? "",
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
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: AppColor.primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        complain.date.toString(),
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(color: AppColor.appBlackColor),
                      ),
                    ],
                  ),
                ),
                /* Visibility(
                  visible: complain.staffresponse != null ? false : true,
                  child: InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          builder: (context) => const ResponseForm(
                                complainId: 12,
                              ));
                    },
                    child: Card(
                      color: AppColor.primaryColor,
                      child: Padding(
                        padding: EdgeInsets.all(6.sp),
                        child: Text("Reply",
                            style: Theme.of(context)
                                .textTheme
                                .headline3!
                                .copyWith(color: AppColor.appWhite)),
                      ),
                    ),
                  ),
                ), */
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
