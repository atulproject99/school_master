import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_button.dart';
import 'package:schoo_app/core/presentation/images/app_images.dart';
import 'package:schoo_app/core/presentation/routes/app_routes.gr.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_profile/shared/provider.dart';

import '../../../../../authentication/domain/user.dart';

class SuccessfullPage extends HookConsumerWidget {
  const SuccessfullPage({Key? key, required this.paymentStatus})
      : super(key: key);
  final String paymentStatus;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = useState<User?>(null);
    ref.watch(parentDetailsProvider).when(data: (data) {
      user.value = data;
      //  print(user.value);
    }, error: (e, s) {
      // print("errr");
    }, loading: () {
      //  print("loading...");
    });

    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SizedBox(
          height: 0.3.sh,
        ),
        LottieBuilder.asset(
          paymentStatus == "Success"
              ? AppImages.successAnimation
              : AppImages.failedAnimation,
          height: 150.h,
          width: 150.w,
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(paymentStatus, style: Theme.of(context).textTheme.headline3),
        const Spacer(),
        Align(
          alignment: Alignment.center,
          child: AppButton(
              buttonTitle: "Home",
              callback: () {
                if (user.value != null) {
                  if (user.value!.role == "parents") {
                    AutoRouter.of(context).pushAndPopUntil(
                        const ParentDashboardRoute(),
                        predicate: (route) => false);
                  } else if (user.value!.role == "student") {
                    AutoRouter.of(context).pushAndPopUntil(
                        const StudentDashboardRoute(),
                        predicate: (route) => false);
                  } else {
                    AutoRouter.of(context).pushAndPopUntil(
                        const TeacherDashboardRoute(),
                        predicate: (route) => false);
                  }
                }
              },
              buttonWidth: 0.6.sw,
              buttonHeight: 40.h),
        )
      ]),
    );
  }
}
