import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';
import 'package:schoo_app/core/presentation/images/app_images.dart';
import 'package:schoo_app/core/presentation/routes/app_routes.gr.dart';
import 'package:schoo_app/core/presentation/url/app_url.dart';

PreferredSizeWidget getAppBar(
    BuildContext context, String title, String image) {
  print(AppUrl.imageUrl + image);
  return PreferredSize(
    preferredSize: Size.fromHeight(60.h),
    child: Container(
        padding:
            EdgeInsets.only(left: 15.w, right: 15.w, top: 40.h, bottom: 10.h),
        decoration: const BoxDecoration(
          color: AppColor.primaryColor,
          image: DecorationImage(
              opacity: 0.45,
              fit: BoxFit.fill,
              image: AssetImage(AppImages.texture)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            image == ""
                ? Container(
                    height: 60.h,
                    width: 60.w,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.appWhite,
                        image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage(
                              AppImages.app_logo,
                            ))),
                  )
                : Container(
                    height: 60.h,
                    width: 60.w,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.appWhite,
                        image: DecorationImage(
                            fit: BoxFit.contain,
                            image: NetworkImage(
                              AppUrl.imageUrl + image,
                            ))),
                  ),
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: AppColor.appWhite),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        AutoRouter.of(context).push(const NotificationRoute());
                      },
                      child: Image.asset(
                        AppImages.notification,
                        height: 30,
                        width: 30,
                        color: AppColor.appWhite,
                      )),
                ],
              ),
            )
          ],
        )

        /*  AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(color: AppColor.appWhite),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: GestureDetector(
                onTap: () {
                  AutoRouter.of(context).push(const NotificationRoute());
                },
                child: Image.asset(
                  AppImages.notification,
                  height: 30,
                  width: 30,
                  color: AppColor.appWhite,
                )),
          )
        ],
      ), */
        ),
  );
}
