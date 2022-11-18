import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/presentation/images/app_images.dart';
import 'package:schoo_app/core/presentation/routes/app_routes.gr.dart';
import 'package:schoo_app/core/presentation/url/app_url.dart';
import 'package:schoo_app/core/shared/provider.dart';

class SplashPage extends HookConsumerWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      Future.delayed(const Duration(seconds: 3), () async {
        final token =
            await ref.watch(localStorageProvider).getData(AppUrl.userToken);

        final userType =
            await ref.watch(localStorageProvider).getData(AppUrl.userType);
        //   print(token);
        if (token!.isEmpty) {
          AutoRouter.of(context)
              .pushAndPopUntil(const LoginRoute(), predicate: (route) => false);
        } else {
          if (userType == "parents") {
            AutoRouter.of(context).pushAndPopUntil(const ParentDashboardRoute(),
                predicate: (route) => false);
          } else if (userType == "student") {
            AutoRouter.of(context).pushAndPopUntil(
                const StudentDashboardRoute(),
                predicate: (route) => false);
          } else {
            AutoRouter.of(context).pushAndPopUntil(
                const TeacherDashboardRoute(),
                predicate: (route) => false);
          }
        }
      });
      return null;
    }, []);
    return Scaffold(
      body: Center(
          child: Image.asset(
        AppImages.app_logo,
        height: 200.h,
        width: 200.w,
      )),
    );
  }
}
