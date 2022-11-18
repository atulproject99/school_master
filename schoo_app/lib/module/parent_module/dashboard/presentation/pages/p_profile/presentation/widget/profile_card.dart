import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard(
      {Key? key,
      required this.title,
      required this.callback,
      required this.profileUrl})
      : super(key: key);
  final String title;
  final VoidCallback callback;
  final String profileUrl;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Card(
        //  color: Colors.primaries[Random().nextInt(Colors.accents.length)],
        elevation: 3,
        // backgroundColor: AppColor.secondaryColor.withOpacity(1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.r)),
        child: Container(
          width: 1.sw,
          padding:
              EdgeInsets.only(left: 15.h, right: 15.h, top: 5.h, bottom: 5.h),
          child: Column(
            children: [
              Row(
                //mainAxisAlignment: MainAxisA  lignment.spaceBetween,
                children: [
                  Image.asset(
                    profileUrl,
                    height: 35.h,
                    width: 35.w,
                    color: AppColor.secondaryColor,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    title,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20.sp,
                    color: AppColor.primaryColor,
                  )
                  //  const Icon(Icons.arrow_forward_ios, size: 19)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
